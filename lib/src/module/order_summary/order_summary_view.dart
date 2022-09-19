import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/formatter.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

import '../../config/constants.dart';
import '../../config/route_config.dart';
import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import '../create_new_receipt/new_receipt_view.dart';
import 'bloc/order_summary_bloc.dart';

class OrderSummaryView extends StatelessWidget {
  final int orderId;
  const OrderSummaryView({Key? key, required this.orderId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => OrderSummaryBloc(
          db: RepositoryProvider.of(context), orderId: orderId),
      child: Scaffold(
        body: Stack(
          children: [
            // CustomerAddress(),
            // OrderLine(),
            // PaymentLineDisplay()
            Container(
              color: AppColor.background,
              child: SafeArea(
                child: BlocBuilder<OrderSummaryBloc, OrderSummaryState>(
                  builder: (context, state) {
                    if (state.status == OrderSummaryStatus.loading) {
                      return const MyLoader();
                    }
                    if (state.status == OrderSummaryStatus.success) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              color: AppColor.headerBackground,
                            ),
                            CustomerAddress(
                              order: state.order!,
                            ),
                            OrderLine(
                              order: state.order!,
                              productMap: state.productMap,
                            ),
                            // Paym entLineDisplay(state.order),
                            OrderDetailSummary(order: state.order!),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 16,
              child: AppBarLeading(
                heading: "Order Detail  #$orderId",
                icon: Icons.arrow_back,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomerAddress extends StatelessWidget {
  final TransactionHeaderEntity order;
  const CustomerAddress({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.headerBackground,
      child: Column(
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppFormatter.longDateFormatter
                            .format(DateTime.now())),
                        Text('Invoice #' + order.transId.toString()),
                        Text('Sales Associate : ' + 'Bill Gates'),
                        Text('Notes : ' + 'Yet to add this'),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Pratyush Harsh',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 24),
                        ),
                        SizedBox(height: 16),
                        Text('pratyushharsh2015@gmail.com'),
                        Text('+91 9430123120'),
                      ]),
                )
              ]),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Wrap(
                  spacing: 10,
                  children: [
                    OrderSummaryButton(
                      text: 'Print Receipt',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RouteConfig.receiptDisplayScreen,
                          arguments: order.transId,
                        );
                      },
                    ),
                    OrderSummaryButton(
                      text: 'Print Invoice',
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          RouteConfig.invoiceDisplayScreen,
                          arguments: order.transId,
                        );
                      },
                    ),
                    OrderSummaryButton(
                      text: 'Email Invoice',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Wrap(
                  children: [
                    OrderSummaryButton(
                      text: 'Return Items',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class OrderSummaryButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String text;
  const OrderSummaryButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.00),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.primary, width: 1),
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}

class Address extends StatelessWidget {
  final String address;
  const Address({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: const BoxConstraints(minHeight: 100),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Shipping Address",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(),
            ]),
      ),
    );
  }
}

class OrderLine extends StatelessWidget {
  final TransactionHeaderEntity order;
  final Map<String, ProductEntity> productMap;
  const OrderLine({Key? key, required this.order, required this.productMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
      if (constraint.maxWidth < 800) {
        return Column(
            children: order.lineItems
            .map((e) => InkWell(
            onTap: () {}, child: NewLineItem(saleLine: e, productModel: productMap[e.itemId],),)).toList(),);
      } else {
        return Column(
            children: order.lineItems
                .map((e) => InkWell(
              onTap: () {},
              child: Column(
                children: [
                  const Divider(height: 0),
                  OrderItemDetailDisplay(
                      entity: e, product: productMap[e.itemId]),
                  const Divider(height: 0),
                ],
              ),
            ))
                .toList());
      }
      }
    );
  }
}

class OrderItemDetailDisplay extends StatelessWidget {
  final TransactionLineItemEntity entity;
  final ProductEntity? product;
  const OrderItemDetailDisplay({Key? key, required this.entity, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: (product != null && product!.imageUrl.isNotEmpty)
                      ? Image.file(
                          File(Constants.baseImagePath + product!.imageUrl[0]),
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80, errorBuilder: (context, obj, trace) {
                          return const SizedBox(
                            height: 80,
                            width: 80,
                          );
                        })
                      : Image.network(
                          "https://cdn.iconscout.com/icon/premium/png-128-thumb/no-image-2840056-2359564.png",
                          fit: BoxFit.cover,
                          height: 70,
                          width: 70,
                          errorBuilder: (context, obj, trace) {
                            return const SizedBox(
                              height: 80,
                              width: 80,
                            );
                          },
                        ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entity.itemDescription!),
                    Text(entity.itemId!),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: entity.taxModifiers.map((e) => Text(e.taxRuleName ?? "Tax Rule")).toList(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("\$${entity.unitPrice} * ${entity.quantity}PCS"),
                ...entity.lineModifiers
                    .map((e) =>
                        Text(e.description ?? e.discountCode ?? "Discount"))
                    .toList(),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text("\$${entity.grossAmount}"),
                  ...entity.lineModifiers
                      .map((e) => Text(e.amount.toStringAsFixed(2)))
                      .toList(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PaymentLineDisplay extends StatelessWidget {
  const PaymentLineDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderSummaryBloc, OrderSummaryState>(
      builder: (context, state) {
        if (state.status == OrderSummaryStatus.loading) {
          return const MyLoader();
        }
        return Card(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            width: double.infinity,
            child: DataTable(
              columns: [
                DataColumn(label: const Text("Seq No"), onSort: (idx, sel) {}),
                DataColumn(
                    label: const Text("Payment Method"), onSort: (idx, sel) {}),
                DataColumn(label: const Text("Time"), onSort: (idx, sel) {}),
                DataColumn(
                  label: const Text("Payment Amount"),
                  numeric: true,
                  onSort: (idx, sel) {},
                ),
              ],
              rows: state.order!.paymentLineItems
                  .map(
                    (e) => DataRow(cells: [
                      DataCell(Text(e.paymentSeq.toString())),
                      DataCell(Text(e.tenderId!)),
                      DataCell(Text(e.beginDate!.toIso8601String())),
                      DataCell(Text(e.amount!.toStringAsFixed(2))),
                    ]),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

class OrderDetailSummary extends StatelessWidget {
  final TransactionHeaderEntity order;
  const OrderDetailSummary({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub Total"),
                      Text("\$${order.subtotal}"),
                    ]),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tax Total"),
                      Text("\$${order.taxTotal}"),
                    ]),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount Total"),
                      Text("\$ ${order.discountTotal}"),
                    ]),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Grand Total"),
                      Text("\$${order.total}"),
                    ]),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
