import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/module/create_new_receipt/sale_complete_dialog.dart';
import 'package:receipt_generator/src/module/pos_action_bar/pos_action_bar.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../config/constants.dart';
import '../../config/currency.dart';
import '../../config/theme_settings.dart';
import '../calculator/calculator.dart';
import '../item_search/bloc/item_search_bloc.dart';
import '../return_order/return_order_view.dart';
import 'bloc/create_new_receipt_bloc.dart';
import 'new_receipt_view.dart';

class NewReceiptDesktopView extends StatelessWidget {
  const NewReceiptDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: BlocProvider(
            lazy: true,
            create: (ctx) => ItemSearchBloc(db: RepositoryProvider.of(ctx)),
            child: BlocConsumer<CreateNewReceiptBloc, CreateNewReceiptState>(
              listener: (context, state) {
                if (state.step == CreateSaleStep.complete) {
                  showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (ctx) => const SaleCompleteDialog())
                      .then((value) => {
                            if (value == Constants.print)
                              {
                                BlocProvider.of<CreateNewReceiptBloc>(context)
                                    .add(OnCreateNewTransaction())
                              }
                            else if (value == Constants.printAndEmail)
                              {
                                BlocProvider.of<CreateNewReceiptBloc>(context)
                                    .add(OnCreateNewTransaction())
                              }
                            else if (value == Constants.cancel)
                              {}
                          });
                } else if (state.step == CreateSaleStep.confirmed) {
                  Navigator.of(context).pop();
                }
              },
              builder: (context, state) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.purple,
                          height: 35,
                          child: Row(
                            children: const [
                              Text("Header"),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ActionButtonBar(),
                              if (CreateSaleStep.item == state.step ||
                                  CreateSaleStep.complete == state.step)
                                const Expanded(
                                    child: SearchUserDisplayDesktop()),
                              if (CreateSaleStep.payment == state.step)
                                const Expanded(child: TenderDisplayDesktop()),
                              const Expanded(child: SaleReturnDisplayDesktop()),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          height: 35,
                          child: Row(
                            children: const [
                              Text("Footer"),
                            ],
                          ),
                        )
                      ],
                    ),
                    // const Positioned(
                    //   child: Draggable(
                    //     feedback: PosActionBar(),
                    //     child: PosActionBar(),
                    //   ),
                    //   top: 0,
                    //   left: 650,
                    // )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SearchUserDisplayDesktop extends StatefulWidget {
  const SearchUserDisplayDesktop({Key? key}) : super(key: key);

  @override
  State<SearchUserDisplayDesktop> createState() =>
      _SearchUserDisplayDesktopState();
}

class _SearchUserDisplayDesktopState extends State<SearchUserDisplayDesktop> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemSearchBloc, ItemSearchState>(
      listener: (context, state) {
        if (state.filter.filterText.isEmpty) {
          _searchController.text = "";
        }
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            const CustomerDetailDesktop(),
            const Positioned(
              child: SearchItemProductsListDesktop(),
              bottom: 70,
              left: 0,
              right: 0,
            ),
            Positioned(
              child: CustomTextField(
                label: "Search For Products",
                controller: _searchController,
                onValueChange: (val) {
                  BlocProvider.of<ItemSearchBloc>(context)
                      .add(SearchItemByFilter(val));
                },
              ),
              bottom: 0,
              left: 0,
              right: 0,
            )
          ],
        ),
      ),
    );
  }
}

class SearchItemProductsListDesktop extends StatelessWidget {
  const SearchItemProductsListDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemSearchBloc, ItemSearchState>(
        builder: (builder, state) {
      if (state.products.isNotEmpty) {
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.products
                .map((p) => InkWell(
                      onTap: () {
                        BlocProvider.of<CreateNewReceiptBloc>(context)
                            .add(AddItemToReceipt(p));
                        BlocProvider.of<ItemSearchBloc>(context)
                            .add(SearchItemByFilter(""));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            p.imageUrl.isNotEmpty
                                ? Image.file(
                                    File(Constants.baseImagePath +
                                        p.imageUrl[0]),
                                    height: 50,
                                    width: 50,
                                    errorBuilder: (context, obj, trace) {
                                      return const SizedBox(
                                        height: 50,
                                        width: 50,
                                      );
                                    },
                                  )
                                : const SizedBox(
                                    height: 50,
                                    width: 50,
                                  ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(p.productId ?? p.skuCode ?? "Invalid"),
                                  Text(
                                    p.displayName,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                      "${(p.salePrice != null && p.salePrice! > 0) ? p.salePrice : p.listPrice} | ${p.listPrice}"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider(
                                    height: 0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        );
      }
      return Container();
    });
  }
}

class SaleReturnDisplayDesktop extends StatelessWidget {
  const SaleReturnDisplayDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SaleHeaderBlock(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  LineItemHeader(),
                  Divider(),
                  Expanded(
                    child: BuildLineItem(),
                  ),
                  NewReceiptSummaryDesktopWidget(),
                  NewInvoiceButtonBar()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerDetailDesktop extends StatelessWidget {
  const CustomerDetailDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  radius: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Customer Name: ${state.customer?.name ?? ""}"),
                    Text(
                        "Customer Phone: ${state.customer?.phoneNumber ?? ""}"),
                    Text("Customer Email: ${state.customer?.email ?? ""}"),
                    Text(
                        "Billing Address: ${state.customer?.billingAddress ?? ""}"),
                  ],
                )
              ],
            )
          ],
        );
      },
    );
  }
}

class TenderDisplayDesktop extends StatefulWidget {
  const TenderDisplayDesktop({Key? key}) : super(key: key);

  @override
  State<TenderDisplayDesktop> createState() => _TenderDisplayDesktopState();
}

class _TenderDisplayDesktopState extends State<TenderDisplayDesktop> {
  String selectedTender = "";
  String amount = "";
  late TextEditingController tenderController;

  void _printLatestValue() {
    setState(() {
      amount =
          "${Currency.inr} ${((double.tryParse(tenderController.text) ?? 0.0) * 0.01).toStringAsFixed(2)}";
    });
  }

  @override
  void initState() {
    super.initState();
    tenderController = TextEditingController();
    tenderController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    tenderController.dispose();
    super.dispose();
  }

  void onSelectNewTender(String val) {
    setState(() {
      selectedTender = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Calculator(
            controller: tenderController,
          ),
          Positioned(
            child: SizedBox(
                width: 250,
                child: NumberTextBox(
                  controller: tenderController,
                )),
            right: 10,
            top: 10,
          ),
          Positioned(
            child: DisplayTenderList(
              selectedTender: selectedTender,
              onSelectNewTender: onSelectNewTender,
            ),
            bottom: 100,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: CustomTextField(
              controller: tenderController,
              enabled: selectedTender.isNotEmpty,
              label: "Enter Tender Amount",
              onFieldSubmitted: (val) {
                BlocProvider.of<CreateNewReceiptBloc>(context).add(
                    OnAddNewTenderLine(
                        tenderType: selectedTender, amount: double.parse(val)));
                tenderController.text = '';
                onSelectNewTender('');
              },
            ),
            bottom: 0,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}

const tenderList = ["CASH", "CARD", "CHECK", "UPI"];

class DisplayTenderList extends StatelessWidget {
  final String selectedTender;
  final Function onSelectNewTender;
  const DisplayTenderList(
      {Key? key, required this.selectedTender, required this.onSelectNewTender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: tenderList
          .map(
            (e) => TenderListDisplayCard(
                tenderType: e,
                selected: selectedTender == e,
                onSelectNewTender: onSelectNewTender),
          )
          .toList(),
    );
  }
}

class TenderListDisplayCard extends StatelessWidget {
  final String tenderType;
  final bool selected;
  final Function onSelectNewTender;
  const TenderListDisplayCard(
      {Key? key,
      required this.tenderType,
      this.selected = false,
      required this.onSelectNewTender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: selected ? Colors.green : Colors.transparent),
        // borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () {
          onSelectNewTender(tenderType);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 80,
          width: 120,
          child: Column(
            children: [Text(tenderType)],
          ),
        ),
      ),
    );
  }
}

class NewReceiptSummaryDesktopWidget extends StatelessWidget {
  const NewReceiptSummaryDesktopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewReceiptBloc, CreateNewReceiptState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              color: Colors.black,
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: RetailSummaryDetailRow(
                      mainAxisAlignment: MainAxisAlignment.start,
                      title: "Items:\t\t",
                      value: state.items.toString(),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: RetailSummaryDetailRow(
                      mainAxisAlignment: MainAxisAlignment.end,
                      title: "Tax:\t",
                      value: "${Currency.inr} ${state.tax.toStringAsFixed(2)}",
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: RetailSummaryDetailRow(
                      mainAxisAlignment: MainAxisAlignment.end,
                      title: "Sub Total:\t",
                      value:
                          "${Currency.inr} ${state.subTotal.toStringAsFixed(2)}",
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            RetailSummaryDetailRow(
              title: "Amount Due",
              value: "${Currency.inr} ${state.amountDue.toStringAsFixed(2)}",
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}

class NumberTextBox extends StatelessWidget {
  final TextEditingController controller;
  const NumberTextBox({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autocorrect: false,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      textAlign: TextAlign.right,
      style: const TextStyle(
        fontSize: 40,
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CardNumberFormatter()
      ],
      cursorColor: Colors.black,
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    print("OLD VALUE: $oldValue");
    print("NEW VALUE: $newValue");
    return newValue;
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue prevValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}

class ActionButtonBar extends StatelessWidget {
  const ActionButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        decoration: const BoxDecoration(
          border: Border(right: BorderSide(color: Colors.black26)),
        ),
        child: Column(
          children: [
            IconButton(
              icon: const Icon(Icons.assignment_return_outlined),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) {
                      return Dialog(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: const ReturnOrderView(),
                        ),
                      );
                    }).then((value) => {
                      if (value != null)
                        {
                          BlocProvider.of<CreateNewReceiptBloc>(context)
                              .add(OnReturnLineItemEvent(value))
                        }
                    });
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings_accessibility),
              onPressed: () {},
            ),
          ],
        ));
  }
}
