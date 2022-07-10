import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/module/create_new_receipt/bloc/create_new_receipt_bloc.dart';
import 'package:receipt_generator/src/module/line_item_modification/bloc/line_item_modification_bloc.dart';

import '../../entity/pos/entity.dart';
import '../../util/text_input_formatter/widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../create_new_receipt/sale_complete_dialog.dart';

enum LineItemModificationType { price, quantity, discount }

class LineItemModificationView extends StatefulWidget {
  final TransactionLineItemEntity lineItem;
  final ProductEntity? productModel;
  const LineItemModificationView(
      {Key? key, required this.lineItem, this.productModel})
      : super(key: key);

  @override
  State<LineItemModificationView> createState() =>
      _LineItemModificationViewState();
}

class _LineItemModificationViewState extends State<LineItemModificationView> {
  LineItemModificationType selectedType = LineItemModificationType.price;

  Widget _getCorrespondingData() {
    switch (selectedType) {
      case LineItemModificationType.price:
        return const LineItemPriceModifyView();
      case LineItemModificationType.quantity:
        return const LineItemQuantityModifyView();
      case LineItemModificationType.discount:
        return const LineItemDiscountModifyView();
      default:
        return const Center(child: Text("Select An Operation"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LineItemModificationBloc(lineItem: widget.lineItem),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "Modify line item",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          SizedBox(
            height: 90,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      DialogButton(
                        label: "Price",
                        onClick: () {
                          setState(() {
                            selectedType = LineItemModificationType.price;
                          });
                        },
                        selected:
                            selectedType == LineItemModificationType.price,
                      ),
                      DialogButton(
                        label: "Quantity",
                        onClick: () {
                          setState(() {
                            selectedType = LineItemModificationType.quantity;
                          });
                        },
                        selected:
                            selectedType == LineItemModificationType.quantity,
                      ),
                      DialogButton(
                        label: "Discount",
                        onClick: () {
                          setState(() {
                            selectedType = LineItemModificationType.discount;
                          });
                        },
                        selected:
                            selectedType == LineItemModificationType.discount,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(child: _getCorrespondingData())
        ],
      ),
    );
  }
}

class LineItemPriceModifyView extends StatefulWidget {
  const LineItemPriceModifyView({Key? key}) : super(key: key);

  @override
  State<LineItemPriceModifyView> createState() =>
      _LineItemPriceModifyViewState();
}

class _LineItemPriceModifyViewState extends State<LineItemPriceModifyView> {
  late TextEditingController _controller;
  double unitPrice = 0;

  @override
  initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          CustomTextField(
            label: "Enter New Price",
            textInputType: TextInputType.number,
            controller: _controller,
            onValueChange: (val) {
              setState(() {
                unitPrice = double.tryParse(val) ?? 0;
              });
            },
            inputFormatters: [CustomInputTextFormatter.positiveNumber],
          ),
          Expanded(child: Container()),
          Row(
            children: [
              Expanded(
                child: RejectButton(
                  label: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AcceptButton(
                  label: "Change Price",
                  onPressed: unitPrice >= 0
                      ? () {
                          Navigator.pop(
                              context,
                              OnUnitPriceUpdate(
                                  saleLine:
                                      BlocProvider.of<LineItemModificationBloc>(
                                              context)
                                          .lineItem,
                                  unitPrice: unitPrice,
                                  reason: "Quantity Changed"));
                        }
                      : null,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LineItemQuantityModifyView extends StatefulWidget {
  const LineItemQuantityModifyView({Key? key}) : super(key: key);

  @override
  State<LineItemQuantityModifyView> createState() =>
      _LineItemQuantityModifyViewState();
}

class _LineItemQuantityModifyViewState
    extends State<LineItemQuantityModifyView> {
  late TextEditingController _controller;
  double quantity = 0;

  @override
  initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          CustomTextField(
            label: "Enter Quantity",
            controller: _controller,
            textInputType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onValueChange: (val) {
              setState(() {
                quantity = double.tryParse(val) ?? 0;
              });
            },
          ),
          Expanded(child: Container()),
          Row(
            children: [
              Expanded(
                child: RejectButton(
                  label: "Cancel",
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: AcceptButton(
                  label: "Change Quantity",
                  onPressed: quantity > 0
                      ? () {
                          Navigator.pop(
                            context,
                            OnQuantityUpdate(
                                saleLine:
                                    BlocProvider.of<LineItemModificationBloc>(
                                            context)
                                        .lineItem,
                                quantity: double.parse(_controller.text),
                                reason: "Quantity Changed"),
                          );
                        }
                      : null,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LineItemDiscountModifyView extends StatelessWidget {
  const LineItemDiscountModifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("LineItemDiscountModifyView"));
  }
}
