import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

import 'bloc/order_summary_bloc.dart';

class OrderSummaryView extends StatelessWidget {
  final int orderId;
  const OrderSummaryView({Key? key, required this.orderId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        lazy: false,
        create: (context) => OrderSummaryBloc(
            db: RepositoryProvider.of(context), orderId: orderId),
        child: Column(children: const [CustomerAddress(), OrderLine(), PaymentLineDisplay() ]),
      ),
    );
  }
}

class CustomerAddress extends StatelessWidget {
  const CustomerAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderSummaryBloc, OrderSummaryState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Address(address: state.order?.shippingAddress ?? "DUmmy"),
            ),
            Expanded(
              child: Address(address: state.order?.shippingAddress ?? "DUmmy"),
            ),
            Expanded(
              child: Address(address: state.order?.shippingAddress ?? "DUmmy"),
            ),
          ],
        );
      },
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
  const OrderLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderSummaryBloc, OrderSummaryState>(
      builder: (context, state) {
        if (state.status == OrderSummaryStatus.loading) {
          return const MyLoader();
        }
        return Card(
          child: Container(
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            child: DataTable(
                columns: [
                  DataColumn(
                      label: const Text("S.No"),
                      onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Product Id"), onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Product Description"),
                      onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Quantity"),
                      numeric: true,
                      onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Amount"),
                      numeric: true,
                      onSort: (idx, sel) {}),
                ],
                rows: state.order!.lineItems
                    .map(
                      (e) => DataRow(cells: [
                        DataCell(Text(e.lineItemSeq.toString())),
                        DataCell(Text(e.itemId)),
                        DataCell(Text(e.itemDescription)),
                        DataCell(Text(e.quantity.toString())),
                        DataCell(Text(e.netAmount.toStringAsFixed(2)))
                      ]),
                    )
                    .toList()),
          ),
        );
      },
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
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            child: DataTable(columns: [
              DataColumn(
                      label: const Text("Seq No"),
                      onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Payment Method"), onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Time"),
                      onSort: (idx, sel) {}),
                  DataColumn(
                      label: const Text("Payment Amount"),
                      numeric: true,
                      onSort: (idx, sel) {},),
            ], rows: state.order!.paymentLineItems
                    .map(
                      (e) => DataRow(cells: [
                        DataCell(Text(e.paymentSeq.toString())),
                        DataCell(Text(e.tenderId)),
                        DataCell(Text(e.beginDate.toIso8601String())),
                        DataCell(Text(e.amount.toStringAsFixed(2))),
                      ]),
                    )
                    .toList(),),
          ),
        );
      },
    );
  }
}