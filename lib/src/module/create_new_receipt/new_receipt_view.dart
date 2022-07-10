import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/constants.dart';
import 'package:receipt_generator/src/config/currency.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/model/tender_line.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_receipt_mobile_view.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_recipt_desktop_view.dart';
import 'package:receipt_generator/src/module/customer_search/bloc/customer_search_bloc.dart';
import 'package:receipt_generator/src/module/item_search/item_search_view.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../entity/pos/entity.dart';
import '../line_item_modification/line_item_modification_view.dart';
import 'bloc/create_new_receipt_bloc.dart';

class NewReceiptView extends StatelessWidget {
  const NewReceiptView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (ctx) => CreateNewReceiptBloc(
              db: RepositoryProvider.of(ctx),
              authenticationBloc: BlocProvider.of(ctx),
              sequenceRepository: RepositoryProvider.of(ctx),
              transactionRepository: RepositoryProvider.of(ctx))
            ..add(OnInitiateNewTransaction()),
        ),
        BlocProvider(
          create: (ctx) => CustomerSearchBloc(
            contactDb: RepositoryProvider.of(ctx),
            db: RepositoryProvider.of(ctx),
          ),
        ),
      ],
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
              .add(OnCustomerSelect(contactEntity));
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
          itemCount: state.lineItem.length + state.tenderLine.length,
          itemBuilder: (itemBuilder, idx) {
            if (idx < state.lineItem.length) {
              return InkWell(
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed(RouteConfig.editSaleLineItemScreen, arguments: state.lineItem[idx]);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: state.lineItem[idx].returnFlag
                            ? Colors.redAccent
                            : Colors.blueAccent,
                        width: 10,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: NewLineItem(
                          saleLine: state.lineItem[idx],
                          productModel:
                              state.productMap[state.lineItem[idx].itemId],
                        ),
                      ),
                      const Divider(
                        height: 0,
                      )
                    ],
                  ),
                ),
              );
            }

            if (idx >= state.lineItem.length) {
              return InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: TenderLineDisplay(
                        tenderLine:
                            state.tenderLine[idx - state.lineItem.length],
                      ),
                    ),
                    const Divider(
                      height: 0,
                    )
                  ],
                ),
              );
            }
            return Container();
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

class TenderLineDisplay extends StatelessWidget {
  final TransactionPaymentLineItemEntity tenderLine;
  const TenderLineDisplay({Key? key, required this.tenderLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        children: [
          const Expanded(child: Icon(Icons.currency_rupee)),
          Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(tenderLine.tenderId))),
          Expanded(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${Currency.inr} ${tenderLine.amount.toStringAsFixed(2)}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ))),
        ],
      ),
    );
  }
}

class NewLineItem extends StatefulWidget {
  final TransactionLineItemEntity saleLine;
  final ProductEntity? productModel;

  const NewLineItem({Key? key, required this.saleLine, this.productModel})
      : super(key: key);

  static const textStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static _NewLineItemState of(BuildContext context) {
    final state = context.findAncestorStateOfType<_NewLineItemState>();
    if (state != null) {
      return state;
    } else {
      throw Exception('Please provide ShowCaseView context');
    }
  }

  @override
  State<NewLineItem> createState() => _NewLineItemState();
}

class _NewLineItemState extends State<NewLineItem> {
  OverlayEntry? _overlayEntry;
  late GlobalKey _key;

  @override
  initState() {
    super.initState();
    _key = LabeledGlobalKey("${widget.saleLine.transSeq}-${widget.saleLine.lineItemSeq}");
  }

  @override
  dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  // Widget buildLineItemButton() {
  //   return Row(
  //     children: [
  //       ElevatedButton(
  //         onPressed: () {},
  //         child: const Text('Update Price'),
  //       ),
  //       ElevatedButton(
  //         onPressed: () {},
  //         child: const Text('Add Discount'),
  //       ),
  //     ],
  //   );
  // }

  // void onTap() {
  //
  //   if (_overlayEntry != null) {
  //     _overlayEntry!.remove();
  //   }
  //
  //   final RenderBox itemBox = _key.currentContext?.findRenderObject()! as RenderBox;
  //   var boxOffset = itemBox.localToGlobal(Offset.zero);
  //
  //   _overlayEntry = OverlayEntry(
  //     builder: (context) {
  //       return Positioned(
  //         top: boxOffset.dy + itemBox.size.height + 10,
  //         left: boxOffset.dx,
  //         child: Material(
  //           color: Colors.transparent,
  //           child: buildLineItemButton(),
  //         ),
  //       );
  //     },
  //   );
  //
  //   final overlay = Overlay.of(context);
  //   overlay?.insert(_overlayEntry!);
  // }

  void onTap() {
    showDialog(
        context: context,
        builder: (ctx) {
          return Dialog(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.5,
              child: LineItemModificationView(lineItem: widget.saleLine, productModel: widget.productModel),
            ),
          );
        }).then((value) => {
      if (value != null && value is CreateNewReceiptEvent)
        {
          BlocProvider.of<CreateNewReceiptBloc>(context)
              .add(value)
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: (widget.productModel != null &&
                            widget.productModel!.imageUrl.isNotEmpty)
                        ? Image.file(
                            File(Constants.baseImagePath +
                                widget.productModel!.imageUrl[0]),
                            fit: BoxFit.cover,
                            height: 70,
                            width: 70, errorBuilder: (context, obj, trace) {
                            return const SizedBox(
                              height: 70,
                              width: 70,
                            );
                          })
                        : Image.network(
                            "https://cdn.iconscout.com/icon/premium/png-128-thumb/no-image-2840056-2359564.png",
                            fit: BoxFit.cover,
                            height: 70,
                            width: 70,
                            errorBuilder: (context, obj, trace) {
                              return const SizedBox(
                                height: 70,
                                width: 70,
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
                      Text(widget.saleLine.itemDescription),
                      Text(widget.saleLine.itemDescription),
                      Text(
                        widget.saleLine.itemId,
                        style: NewLineItem.textStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(),
                  flex: 2,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${Currency.inr}${widget.saleLine.extendedAmount.toStringAsFixed(2)}",
                      style: NewLineItem.textStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      widget.saleLine.quantity.toString(),
                      style: NewLineItem.textStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${Currency.inr}${widget.saleLine.extendedAmount.toStringAsFixed(2)}",
                      style: NewLineItem.textStyle,
                    ),
                  ),
                ),
              ],
            ),
            // ...widget.saleLine.priceModifier
            //     .map((e) => Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               children: const [
            //                 Padding(
            //                     padding: EdgeInsets.only(right: 8, top: 4),
            //                     child: Icon(
            //                       Icons.discount,
            //                       color: Colors.brown,
            //                       size: 16,
            //                     )),
            //                 Text("10% off on all"),
            //               ],
            //             ),
            //             const Text(
            //               "-${Currency.inr}50.00",
            //               style: NewLineItem.textStyle,
            //             )
            //           ],
            //         ))
            //     .toList()
          ],
        ),
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
                    // @TODO Void All the tender
                    if (state.step == CreateSaleStep.payment) {
                      BlocProvider.of<CreateNewReceiptBloc>(context)
                          .add(OnChangeSaleStep(CreateSaleStep.item));
                      return;
                    }

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
              if (state.step == CreateSaleStep.item ||
                  state.step == CreateSaleStep.payment)
                Expanded(
                  child: AcceptButton(
                    onPressed: state.transSeq > 0 && state.lineItem.isNotEmpty
                        ? () {
                            BlocProvider.of<CreateNewReceiptBloc>(context)
                                .add(OnChangeSaleStep(CreateSaleStep.payment));
                          }
                        : null,
                    label: "Proceed To Pay",
                  ),
                ),
              if (state.step == CreateSaleStep.complete)
                Expanded(
                  child: AcceptButton(
                    onPressed: () {
                      BlocProvider.of<CreateNewReceiptBloc>(context)
                          .add(OnChangeSaleStep(CreateSaleStep.complete));
                    },
                    label: "Complete Sale",
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
//OnChangeSaleStep
// showDialog(
// context: context,
// builder: (BuildContext context) {
// return AlertDialog(
// title: const Text("Sale Confirmation"),
// content: const Text(
// "Would you like to continue the sale transaction?"),
// actions: [
// ElevatedButton(
// child: const Text("Cancel"),
// onPressed: () {
// Navigator.of(context).pop();
// },
// ),
// ElevatedButton(
// child: const Text("Continue"),
// onPressed: () {
// Navigator.of(context).pop(true);
// },
// ),
// ],
// );
// },
// ).then((value) => {
// if (value != null && value)
// {
// BlocProvider.of<CreateNewReceiptBloc>(
// context)
//     .add(OnCreateNewTransaction())
// }
// });

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
              value: "${Currency.inr} ${state.subTotal.toStringAsFixed(2)}",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            RetailSummaryDetailRow(
              title: "Discount",
              value: "${Currency.inr} ${state.discount.toStringAsFixed(2)}",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            RetailSummaryDetailRow(
              title: "Tax",
              value: "${Currency.inr} ${state.tax.toStringAsFixed(2)}",
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.black54),
            ),
            const Divider(),
            RetailSummaryDetailRow(
              title: "Grand Total",
              value: "${Currency.inr} ${state.grandTotal.toStringAsFixed(2)}",
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
  final TextStyle? textStyle;
  final MainAxisAlignment mainAxisAlignment;

  const RetailSummaryDetailRow(
      {Key? key,
      required this.title,
      required this.value,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        Text(
          value,
          style: textStyle,
        )
      ],
    );
  }
}

class SaleCustomerMobile extends StatelessWidget {
  final ContactEntity customer;
  const SaleCustomerMobile({Key? key, required this.customer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(customer.name), Text('${customer.phoneNumber}')],
      ),
    );
  }
}

class CustomerDetailWidget extends StatefulWidget {
  const CustomerDetailWidget({Key? key}) : super(key: key);

  @override
  State<CustomerDetailWidget> createState() => _CustomerDetailWidgetState();
}

class _CustomerDetailWidgetState extends State<CustomerDetailWidget> {
  final TextEditingController _controller = TextEditingController();
  var newCustomer = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerSearchBloc, CustomerSearchState>(
      builder: (context, state) {
        return Column(
          children: [
            BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
                builder: (context, st) {
              if (st.customer != null && !newCustomer) {
                return InkWell(
                    onLongPress: () {
                      setState(() => {newCustomer = true});
                    },
                    child: SaleCustomerMobile(
                      customer: st.customer!,
                    ));
              } else {
                return CustomTextField(
                  controller: _controller,
                  label: "Customer Detail",
                  onValueChange: (value) {
                    BlocProvider.of<CustomerSearchBloc>(context)
                        .add(OnCustomerNameChange(name: value));
                  },
                  suffixIcon: newCustomer ? const Icon(Icons.close) : null,
                );
              }
            }),
            if (CustomerSearchStateStatus.searching == state.status)
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
                                  setState(() {
                                    newCustomer = false;
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    BlocProvider.of<CreateNewReceiptBloc>(
                                            context)
                                        .add(OnCustomerSelect(e));
                                    BlocProvider.of<CustomerSearchBloc>(context)
                                        .add(OnSearchComplete());
                                  });
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
                      ...state.phoneBookSuggestion
                          .map((e) => InkWell(
                                onTap: () {
                                  setState(() {
                                    newCustomer = false;
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                    BlocProvider.of<CreateNewReceiptBloc>(
                                            context)
                                        .add(OnCustomerSelect(e));
                                    BlocProvider.of<CustomerSearchBloc>(context)
                                        .add(OnSearchComplete());
                                  });
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
              Text(
                'Transaction No#  ${state.transSeq}',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      },
    );
  }
}
