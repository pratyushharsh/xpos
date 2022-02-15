import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/currency.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/sale_status_codes.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/module/list_all_receipt/bloc/list_all_receipt_bloc.dart';

class ListAllReceiptView extends StatelessWidget {
  const ListAllReceiptView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) =>
          ListAllReceiptBloc(db: RepositoryProvider.of(context))
            ..add(LoadAllReceipt()),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<ListAllReceiptBloc, ListAllReceiptState>(
          builder: (context, state) {
            if (state.status == ListAllReceiptStatus.loading) {
              return const CircularProgressIndicator();
            }
            return ListView.builder(
                itemCount: state.receipts.length,
                itemBuilder: (ctx, idx) {
                  return ReceiptHeaderCard(receipt: state.receipts[idx]);
                });
          },
        ),
      ),
    );
  }
}

class ReceiptHeaderCard extends StatelessWidget {
  final TransactionHeaderEntity receipt;
  const ReceiptHeaderCard({Key? key, required this.receipt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(RouteConfig.receiptDisplayScreen,
              arguments: receipt.transId);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${receipt.customerName}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '${Currency.inr}${receipt.total}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Receipt #${receipt.transId}',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  if (receipt.status.isNotEmpty)
                    HeaderStatusChip(
                      status: receipt.status,
                    )
                ],
              ),
              Row(
                children: [
                  if (receipt.customerPhone != null)
                    Text('${receipt.customerPhone}'),
                  if (receipt.customerPhone != null &&
                      receipt.customerAddress != null)
                    const Text(' | '),
                  if (receipt.customerAddress != null)
                    Expanded(
                        child: Text(
                      '${receipt.customerAddress}',
                      overflow: TextOverflow.ellipsis,
                    ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderStatusChip extends StatelessWidget {
  final String status;
  const HeaderStatusChip({Key? key, required this.status}) : super(key: key);

  String getStatus() {
    if (status == SaleStatus.pending) {
      return "Payment Pending";
    } else if (status == SaleStatus.cancelled) {
      return "Cancelled";
    } else if (status == SaleStatus.completed) {
      return "Paid";
    }
    return '';
  }

  Color getStatusColor() {
    if (status == SaleStatus.pending) {
      return Colors.orange;
    } else if (status == SaleStatus.cancelled) {
      return Colors.red;
    } else if (status == SaleStatus.completed) {
      return Colors.green;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: getStatusColor()),
          borderRadius: BorderRadius.circular(5)),
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
      child: Row(
        children: [
          Text(
            '${getStatus()} ',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: getStatusColor()),
          ),
          Icon(
            Icons.circle,
            size: 8,
            color: getStatusColor(),
          ),
        ],
      ),
    );
  }
}
