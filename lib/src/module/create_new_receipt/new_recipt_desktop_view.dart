import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:receipt_generator/src/module/create_new_receipt/sale_complete_dialog.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../config/constants.dart';
import '../../config/currency.dart';
import '../../config/tender_config.dart';
import '../../config/theme_settings.dart';
import '../../util/text_input_formatter/currency_text_input_formatter.dart';
import '../../util/text_input_formatter/money_editing_controller.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/keypad_overlay/keypad_overlay.dart';
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
                              if (SaleStep.item == state.step ||
                                  SaleStep.complete == state.step)
                                const Expanded(
                                    child: SearchUserDisplayDesktop()),
                              if (SaleStep.payment == state.step)
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
  final Function? onTender;
  const TenderDisplayDesktop({Key? key, this.onTender}) : super(key: key);

  @override
  State<TenderDisplayDesktop> createState() => _TenderDisplayDesktopState();
}

class _TenderDisplayDesktopState extends State<TenderDisplayDesktop> {
  String selectedTender = "";
  late MoneyEditingController tenderController;
  late FocusNode tenderFocusNode;

  @override
  void initState() {
    super.initState();
    tenderController = MoneyEditingController(formatter: NumberFormat.simpleCurrency(locale: "en_IN"));
    tenderFocusNode = FocusNode();
  }

  @override
  void dispose() {
    tenderController.dispose();
    tenderFocusNode.dispose();
    super.dispose();
  }

  void onSelectNewTender(String val) {
    setState(() {
      selectedTender = val;
    });
    FocusScope.of(context).requestFocus(tenderFocusNode);
  }

  double validAmount() {
    try {
      MoneyTextEditingValue amount = tenderController.value as MoneyTextEditingValue;
      return amount.moneyValue;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const Positioned(
            top: 10,
            left: 10,
            child: Text(
              "Tender Amount",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(tenderIconMapping[selectedTender] ?? tenderIconMapping["OTHER"]!, size: 80),
                    const SizedBox(
                      height: 50,
                    ),
                    TenderAmountTextField(
                      controller: tenderController,
                      selectedTender: selectedTender,
                      focusNode: tenderFocusNode,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DisplayTenderList(
                      selectedTender: selectedTender,
                      onSelectNewTender: onSelectNewTender,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Row(
              children: [
                Expanded(
                  child: RejectButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    label: "Cancel",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AcceptButton(
                    onPressed: validAmount() > 0 ? () {

                      if (widget.onTender != null) {
                        widget.onTender!(OnAddNewTenderLine(
                            tenderType: selectedTender, amount: validAmount()));

                      } else {
                        BlocProvider.of<CreateNewReceiptBloc>(context).add(
                            OnAddNewTenderLine(
                                tenderType: selectedTender, amount: validAmount()));
                      }
                      onSelectNewTender('');
                      tenderController.text = '';
                      if (Platform.isIOS || Platform.isAndroid) {
                        Navigator.of(context).pop();
                      }
                    } : null,
                    label: "Accept Payment",
                  ),
                ),
              ],
            ),
          )
          // Positioned(
          //   child: CustomTextField(
          //     controller: tenderController,
          //     enabled: selectedTender.isNotEmpty,
          //     label: "Enter Tender Amount",
          //     onFieldSubmitted: (val) {

          //     },
          //   ),
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          // )
        ],
      ),
    );
  }
}

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
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(tenderIconMapping[tenderType] ?? tenderIconMapping["OTHER"]!),
                const SizedBox(height: 10),
                Text(tenderType)
              ],
            ),
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

class TenderAmountTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String selectedTender;

  const TenderAmountTextField({Key? key, required this.controller, required this.selectedTender, required this.focusNode}) : super(key: key);

  @override
  State<TenderAmountTextField> createState() => _TenderAmountTextFieldState();
}

class _TenderAmountTextFieldState extends State<TenderAmountTextField> {
  final GlobalKey _overlayKey = GlobalKey();
  bool _isNodeFocus = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    widget.focusNode.removeListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      if (!Platform.isAndroid) {
        _isNodeFocus = widget.focusNode.hasFocus;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeypadOverlay(
      overlayPadding: const EdgeInsets.all(0),
      key: _overlayKey,
      showOverlay: _isNodeFocus,
      child: TextFormField(
        enabled: widget.selectedTender.isNotEmpty,
        focusNode: widget.focusNode,
        controller: widget.controller,
        autocorrect: false,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 70,
        ),
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
      ),
      overlayWidget: Keypad(
        controller: widget.controller,
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
          Tooltip(
            message: "Return Item",
            child: IconButton(
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
          ),
          IconButton(
            icon: const Icon(Icons.settings_accessibility),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
