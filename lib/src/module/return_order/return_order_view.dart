import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import 'bloc/return_order_bloc.dart';

// Step To Return A Order

class ReturnOrderView extends StatelessWidget {
  const ReturnOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReturnOrderBloc(
          transactionRepository: RepositoryProvider.of(context)),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "Return Order",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const   Divider(),
          BlocBuilder<ReturnOrderBloc, ReturnOrderState>(
            builder: (context, state) {
              if (state.status == ReturnOrderExistStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (state.status == ReturnOrderExistStatus.success) {
                return ReturnOrderSuccessView(
                  order: state.order!,
                  alreadyReturnedOrderMap: state.alreadyReturnedOrderMap,
                );
              }

              return const SearchReturnOrderForm();
            },
          ),
        ],
      ),
    );
  }
}

class SearchReturnOrderForm extends StatelessWidget {
  const SearchReturnOrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          CustomTextField(
            label: "Order No",
            textInputType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onFieldSubmitted: (value) {
              if (int.tryParse(value) != null) {
                BlocProvider.of<ReturnOrderBloc>(context)
                    .add(SearchOrderToReturn(orderId: int.parse(value)));
              }
            },
          ),
        ],
      ),
    );
  }
}

class ReturnOrderSuccessView extends StatelessWidget {
  final TransactionHeaderEntity order;
  final Map<String, double> alreadyReturnedOrderMap;
  const ReturnOrderSuccessView({Key? key, required this.order, required this.alreadyReturnedOrderMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(shrinkWrap: true, children: [
          ...order.lineItems
              .map((e) => ReturnOrderLineItem(lineItem: e, returnedQuantity: alreadyReturnedOrderMap["${e.lineItemSeq}#${e.itemId}"] ?? 0.0,))
              .toList()
        ]),
        Row(children: [
          ElevatedButton(
            child: const Text("Cancel"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: const Text("Return Selected"),
            onPressed: () {
              Navigator.of(context).pop(BlocProvider.of<ReturnOrderBloc>(context).state.returnMap);
            },
          ),
        ])
      ],
    );
  }
}

class ReturnOrderLineItem extends StatefulWidget {
  final TransactionLineItemEntity lineItem;
  final double returnedQuantity;
  const ReturnOrderLineItem({Key? key, required this.lineItem, this.returnedQuantity = 0.0})
      : super(key: key);

  @override
  State<ReturnOrderLineItem> createState() => _ReturnOrderLineItemState();
}

class _ReturnOrderLineItemState extends State<ReturnOrderLineItem> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: _checked ? 10 : 0,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Row(children: [
            Checkbox(
                value: _checked,
                onChanged: (value) {
                  setState(() {
                    _checked = value ?? false;
                    if (value != null) {
                      if (value) {
                        BlocProvider.of<ReturnOrderBloc>(context).add(
                          AddLineItemToReturn(
                            lineItem: widget.lineItem,
                            returnLineItemParameters: ReturnLineItemParameters(
                              quantity: widget.lineItem.quantity - widget.returnedQuantity,
                              reasonCode: ["RETURNED"],
                            ),
                          ),
                        );
                      } else {
                        BlocProvider.of<ReturnOrderBloc>(context).add(
                            RemoveLineItemFromReturn(
                                lineItem: widget.lineItem));
                      }
                    }
                  });
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.lineItem.itemId,
                ),
                Text(
                  widget.lineItem.itemDescription,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                    (widget.lineItem.quantity - widget.returnedQuantity).toString(),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
