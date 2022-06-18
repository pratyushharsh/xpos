import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/currency.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/entity/pos/contact_entity.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_receipt_mobile_view.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_recipt_desktop_view.dart';
import 'package:receipt_generator/src/module/item_search/item_search_view.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import 'bloc/create_new_receipt_bloc.dart';

class NewReceiptView extends StatelessWidget {
  const NewReceiptView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (ctx) => CreateNewReceiptBloc(
          db: RepositoryProvider.of(ctx),
          contactDb: RepositoryProvider.of(ctx),
          authenticationBloc: BlocProvider.of(ctx),
          sequenceRepository: RepositoryProvider.of(ctx),
          transactionRepository: RepositoryProvider.of(ctx))
        ..add(OnInitiateNewTransaction()),
      child: LayoutBuilder(
        builder: (context, constrain) {
          if (constrain.maxWidth > 800) {
            return const NewReceiptDesktopView();
          } else {
            return const NewReceiptMobileView();
          }
        },
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
                "${contactEntity.name} | ${contactEntity.phoneNumber ?? ''}",
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
      return ListView.builder(
          itemCount: state.lineItem.length,
          itemBuilder: (itemBuilder, idx) {
            return InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(RouteConfig.editSaleLineItemScreen, arguments: state.lineItem[idx]);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NewLineItem(
                      saleLine: state.lineItem[idx],
                    ),
                  ),
                  const Divider(height: 0,)
                ],
              ),
            );
          });
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
          flex: 2,
          child: Text(
            "Product Description",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "UnitCost",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Qty",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Expanded(
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

  static const textStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  child: Image.network(
                    "https://cdn.iconscout.com/icon/premium/png-128-thumb/no-image-2840056-2359564.png",
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                    errorBuilder: (context, obj, trace) {
                      return const SizedBox(
                        height: 50,
                        width: 50,
                      );
                    },
                  )),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(saleLine.product.description),
                    Text(saleLine.product.description),
                    Text(
                      saleLine.product.productId ??
                          saleLine.product.skuCode ??
                          "",
                      style: textStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: Container(), flex: 2,),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${Currency.inr}${saleLine.amount.toStringAsFixed(2)}",
                    style: textStyle,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    saleLine.qty.toString(),
                    style: textStyle,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${Currency.inr}${saleLine.amount.toStringAsFixed(2)}",
                    style: textStyle,
                  ),
                ),
              ),
            ],
          ),
          ...saleLine.priceModifier
              .map((e) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(right: 8, top: 4),
                              child: Icon(
                                Icons.discount,
                                color: Colors.brown,
                                size: 16,
                              )),
                          Text("10% off on all"),
                        ],
                      ),
                      const Text(
                        "-${Currency.inr}50.00",
                        style: textStyle,
                      )
                    ],
                  ))
              .toList()
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
      child: const Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = ElevatedButton(
      child: const Text("Continue"),
      onPressed: () {},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("AlertDialog"),
      content: const Text(
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
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: RejectButton(
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
                            {Navigator.of(context).pop()}
                        });
                  },
                  label: 'Cancel',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: AcceptButton(
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
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
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
                                    BlocProvider.of<CreateNewReceiptBloc>(
                                            context)
                                        .add(OnCreateNewTransaction())
                                  }
                              });
                        }
                      : null,
                  label: "Proceed To Pay",
                ),
              ),
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

class CustomerDetailWidget extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  CustomerDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
      builder: (context, state) {
        if (state.selectedCustomer != null) {
          _controller.text = state.selectedCustomer!.name;
        }
        return Column(
          children: [
            CustomTextField(
              controller: _controller,
              label: "Customer Detail",
              onValueChange: (value) {
                BlocProvider.of<CreateNewReceiptBloc>(context)
                    .add(OnCustomerNameChange(name: value));
              },
            ),
            if (CustomerSearchState.searching == state.customerSearchState)
              Card(
                elevation: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.subtitleColorPrimary),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          children: const [
                            Icon(Icons.add),
                            Text("Create New Customer")
                          ],
                        ),
                      ),
                      const Divider(
                        height: 0,
                      ),
                      ...state.customerSuggestion
                          .map((e) => InkWell(
                                onTap: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  BlocProvider.of<CreateNewReceiptBloc>(context)
                                      .add(OnSuggestedCustomerSelect(e));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                          '${e.name}${e.phoneNumber != null ? ' \u2022' : ''} ${e.phoneNumber ?? ''}')
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                      const Divider(
                        height: 0,
                      ),
                      ...state.phoneContactSuggestion
                          .map((e) => InkWell(
                                onTap: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  BlocProvider.of<CreateNewReceiptBloc>(context)
                                      .add(OnSuggestedCustomerSelect(e));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          '${e.name} \u2022 ${e.phoneNumber ?? ''}'),
                                      const Icon(
                                        Icons.phone,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ))
                          .toList(),
                    ],
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}

class SaleHeaderBlock extends StatelessWidget {
  const SaleHeaderBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
  builder: (context, state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 35,
      color: Colors.black,
      child: Row(
        children: [
          Text('Transaction No#  ${state.transSeq}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  },
);
  }
}
