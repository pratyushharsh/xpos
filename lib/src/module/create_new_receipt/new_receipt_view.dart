import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/currency.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/entity/contact_entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/item_search/item_search_view.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import 'bloc/create_new_receipt_bloc.dart';

class NewReceiptView extends StatelessWidget {
  const NewReceiptView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (ctx) => CreateNewReceiptBloc(db: RepositoryProvider.of(ctx))
        ..add(OnInitiateNewTransaction()),
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
              builder: (context, state) {
            if (state.transSeq != -1) {
              return Text("Receipt  #" + state.transSeq.toString());
            } else {
              return Row(
                children: const [
                  Text("New Receipt"),
                  CircularProgressIndicator()
                ],
              );
            }
          }),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Column(
                  children: const [
                    CustomerDetailWidget(),
                    Divider(
                      thickness: 8,
                    ),
                    LineItemHeader(),
                    Divider(),
                    BuildLineItem(),
                    SearchAndAddItem(),
                    Divider(),
                    NewReceiptSummaryWidget(),
                    Divider(),
                    // NewInvoiceButtonBar(),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
                Positioned(
                  top: 60,
                  child:
                      BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
                    builder: (context, state) {
                      if (state.customerSuggestion.isEmpty) return Container();
                      return Card(
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: state.customerSuggestion
                                .map((e) =>
                                    CustomerSuggestionWidget(contactEntity: e))
                                .toList(),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NewInvoiceButtonBar(),
      ),
    );
  }
}

class CustomerSuggestionWidget extends StatelessWidget {
  final ContactEntity contactEntity;
  const CustomerSuggestionWidget({Key? key, required this.contactEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          BlocProvider.of<CreateNewReceiptBloc>(context)
              .add(OnSuggestedCustomerSelect(contactEntity));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "${contactEntity.firstName} ${contactEntity.lastName ?? ''} | ${contactEntity.phoneNumber ?? ''}",
                overflow: TextOverflow.ellipsis,
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildLineItem extends StatelessWidget {
  const BuildLineItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
        builder: (context, state) {
      return Column(
        children: state.lineItem
            .map((e) => NewLineItem(
                  saleLine: e,
                ))
            .toList(),
      );
    });
  }
}

class SearchAndAddItem extends StatelessWidget {
  const SearchAndAddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(context: context, builder: (ctx) => const SearchItemBox())
            .then((value) => {
                  if (value != null)
                    {
                      BlocProvider.of<CreateNewReceiptBloc>(context)
                          .add(AddItemToReceipt(value))
                    }
                });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: const [
            Icon(Icons.add),
            SizedBox(
              width: 10,
            ),
            Text("Search For Products")
          ],
        ),
      ),
    );
  }
}

class SearchItemBox extends StatefulWidget {
  const SearchItemBox({Key? key}) : super(key: key);

  @override
  _SearchItemBoxState createState() => _SearchItemBoxState();
}

class _SearchItemBoxState extends State<SearchItemBox> {
  Widget contentBox(BuildContext context) {
    return const SearchItemView();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 8),
      elevation: 0,
      alignment: const Alignment(0, -0.5),
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
}

class LineItemHeader extends StatelessWidget {
  const LineItemHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 3,
          child: Text(
            "Product Name",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Unit Price",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            "Qty",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Amount",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

class NewLineItem extends StatelessWidget {
  final SaleLine saleLine;

  const NewLineItem({Key? key, required this.saleLine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              saleLine.product.description,
            ),
          ),
          Expanded(
            flex: 2,
            child: TextFormField(
              textAlign: TextAlign.right,
              initialValue: saleLine.price.toStringAsFixed(2),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                BlocProvider.of<CreateNewReceiptBloc>(context).add(
                    OnUnitPriceUpdate(
                        saleLine: saleLine, unitPrice: double.parse(val)));
              },
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 3),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              onChanged: (val) {
                BlocProvider.of<CreateNewReceiptBloc>(context).add(
                    OnQuantityUpdate(
                        saleLine: saleLine, quantity: double.parse(val)));
              },
              initialValue: saleLine.qty.toString(),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 3),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                    "${Currency.inr}${saleLine.amount.toStringAsFixed(2)}")),
          ),
        ],
      ),
    );
  }
}

class NewInvoiceButtonBar extends StatelessWidget {
  const NewInvoiceButtonBar({Key? key}) : super(key: key);

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = ElevatedButton(
      child: Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text(
          "Would you like to continue learning how to use Flutter alerts?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateNewReceiptBloc, CreateNewReceiptState>(
      listener: (context, state) => {
        if (state.status == CreateNewReceiptStatus.paymentAwaiting)
          {
            Navigator.of(context).popAndPushNamed(
                RouteConfig.receiptDisplayScreen,
                arguments: state.transSeq)
          }
      },
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirmation"),
                        content: const Text(
                            "Would you like to cancel the sale transaction?"),
                        actions: [
                          ElevatedButton(
                            child: const Text("Back"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          ElevatedButton(
                            child: const Text("Ok"),
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                          ),
                        ],
                      );
                    },
                  ).then((value) => {
                    if (value != null && value)
                      {
                        Navigator.of(context).pop()
                      }
                  });
                },
                child: const Text('Cancel'),
              )),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: state.transSeq > 0 && state.lineItem.isNotEmpty
                    ? () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Sale Confirmation"),
                              content: const Text(
                                  "Would you like to continue the sale transaction?"),
                              actions: [
                                ElevatedButton(
                                  child: const Text("Cancel"),
                                  onPressed: () {},
                                ),
                                ElevatedButton(
                                  child: const Text("Continue"),
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                ),
                              ],
                            );
                          },
                        ).then((value) => {
                              if (value != null && value)
                                {
                                  BlocProvider.of<CreateNewReceiptBloc>(context)
                                      .add(OnCreateNewTransaction())
                                }
                            });
                      }
                    : null,
                child: const Text('Next'),
              )),
            ],
          ),
        );
      },
    );
  }
}

class NewReceiptSummaryWidget extends StatelessWidget {
  const NewReceiptSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
      builder: (context, state) {
        return Column(
          children: [
            RetailSummaryDetailRow(
              title: "Sub Total",
              value: state.subTotal.toStringAsFixed(2),
              currency: Currency.inr,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            RetailSummaryDetailRow(
              title: "Discount",
              value: state.discount.toStringAsFixed(2),
              currency: Currency.inr,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            RetailSummaryDetailRow(
              title: "Tax",
              value: state.tax.toStringAsFixed(2),
              currency: Currency.inr,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            const Divider(),
            RetailSummaryDetailRow(
              title: "Grand Total",
              value: state.grandTotal.toStringAsFixed(2),
              currency: Currency.inr,
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        );
      },
    );
  }
}

class RetailSummaryDetailRow extends StatelessWidget {
  final String title;
  final String value;
  final String currency;
  final TextStyle? textStyle;

  const RetailSummaryDetailRow(
      {Key? key,
      required this.title,
      required this.value,
      required this.currency,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        Text(
          currency + value,
          style: textStyle,
        )
      ],
    );
  }
}

class CustomerDetailWidget extends StatefulWidget {
  const CustomerDetailWidget({Key? key}) : super(key: key);

  @override
  State<CustomerDetailWidget> createState() => _CustomerDetailWidgetState();
}

class _CustomerDetailWidgetState extends State<CustomerDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    initialValue: state.customerName,
                    label: "Customer Detail",
                    onValueChange: (value) {
                      BlocProvider.of<CreateNewReceiptBloc>(context)
                          .add(OnCustomerNameChange(name: value));
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: CustomTextField(
                    initialValue: state.customerPhone,
                    label: "Phone",
                    onValueChange: (value) {
                      BlocProvider.of<CreateNewReceiptBloc>(context)
                          .add(OnCustomerPhoneChange(phone: value));
                    },
                  ),
                ),
              ],
            ),
            CustomTextField(
              initialValue: state.customerAddress,
              label: "Address",
              minLines: 2,
              maxLines: 3,
              onValueChange: (value) {
                BlocProvider.of<CreateNewReceiptBloc>(context)
                    .add(OnCustomerAddressChange(address: value));
              },
            ),
          ],
        );
      },
    );
  }
}
