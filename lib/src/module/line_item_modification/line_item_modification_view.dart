import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/module/create_new_receipt/bloc/create_new_receipt_bloc.dart';
import 'package:receipt_generator/src/module/line_item_modification/bloc/line_item_modification_bloc.dart';

import '../../config/theme_settings.dart';
import '../../entity/pos/entity.dart';
import '../../util/text_input_formatter/widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../create_new_receipt/sale_complete_dialog.dart';

enum LineItemModificationType { price, quantity, discount, tax }
enum TaxCalculationMethod { percentage, amount }
enum DiscountCalculationMethod { percentage, amount }

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
      case LineItemModificationType.tax:
        return const LineItemTaxModifyView();
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
                      DialogButton(
                        label: "Tax",
                        onClick: () {
                          setState(() {
                            selectedType = LineItemModificationType.tax;
                          });
                        },
                        selected: selectedType == LineItemModificationType.tax,
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

class LineItemDiscountModifyView extends StatefulWidget {
  const LineItemDiscountModifyView({Key? key}) : super(key: key);

  @override
  State<LineItemDiscountModifyView> createState() =>
      _LineItemDiscountModifyViewState();
}

class _LineItemDiscountModifyViewState
    extends State<LineItemDiscountModifyView> {
  late TextEditingController _controller;
  double discountAmount = 0;
  DiscountCalculationMethod method = DiscountCalculationMethod.amount;
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
          Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Amount Off'),
                    leading: Radio<DiscountCalculationMethod>(
                      fillColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      focusColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      value: DiscountCalculationMethod.amount,
                      groupValue: method,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            method = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Percentage Off'),
                    leading: Radio<DiscountCalculationMethod>(
                      fillColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      focusColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      value: DiscountCalculationMethod.percentage,
                      groupValue: method,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            method = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ]
          ),
          CustomTextField(
            label: "Enter Discount Amount",
            controller: _controller,
            textInputType: TextInputType.number,
            inputFormatters: [CustomInputTextFormatter.positiveNumber],
            onValueChange: (val) {
              setState(() {
                discountAmount = double.tryParse(val) ?? 0;
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
                  label: "Apply Discount",
                  onPressed: discountAmount >= 0
                      ? () {
                          Navigator.pop(
                            context,
                            OnApplyDiscountAmount(
                                saleLine:
                                    BlocProvider.of<LineItemModificationBloc>(
                                            context)
                                        .lineItem,
                                discountAmount: discountAmount,
                                reason: "Discount Amount Changed"),
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

class LineItemTaxModifyView extends StatefulWidget {
  const LineItemTaxModifyView({Key? key}) : super(key: key);

  @override
  State<LineItemTaxModifyView> createState() => _LineItemTaxModifyViewState();
}

class _LineItemTaxModifyViewState extends State<LineItemTaxModifyView> {
  late TextEditingController _controller;
  double taxAmount = 0;
  TaxCalculationMethod method = TaxCalculationMethod.amount;

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
          Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Amount Off'),
                    leading: Radio<TaxCalculationMethod>(
                      fillColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      focusColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      value: TaxCalculationMethod.amount,
                      groupValue: method,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            method = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Percentage Off'),
                    leading: Radio<TaxCalculationMethod>(
                      fillColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      focusColor: MaterialStateColor.resolveWith((states) => AppColor.primary),
                      value: TaxCalculationMethod.percentage,
                      groupValue: method,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            method = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ]
          ),
          CustomTextField(
            label: "Enter Tax Amount",
            textInputType: TextInputType.number,
            controller: _controller,
            onValueChange: (val) {
              setState(() {
                taxAmount = double.tryParse(val) ?? 0;
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
                  label: "Change Tax",
                  onPressed: taxAmount >= 0
                      ? () {
                          Navigator.pop(
                            context,
                            OnChangeLineItemTaxAmount(
                                saleLine:
                                    BlocProvider.of<LineItemModificationBloc>(
                                            context)
                                        .lineItem,
                                taxAmount: taxAmount,
                                reason: "Tax Changed"),
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
