import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/product.dart';
import 'package:receipt_generator/src/module/create_new_item/product_field_validator.dart';
import 'package:receipt_generator/src/module/item/bloc/item_bloc.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/custom_dropdown.dart';
import 'package:receipt_generator/src/widgets/custom_text_field.dart';
import 'package:receipt_generator/src/widgets/loading.dart';
import 'package:validators/sanitizers.dart';

enum NewItemScreenState { editItem, createItem }

class AddNewItemScreen extends StatelessWidget {
  final String? productId;
  const AddNewItemScreen({Key? key, this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => productId != null ? ItemBloc(
            db: RepositoryProvider.of(context),
          ) : ItemBloc(
            db: RepositoryProvider.of(context),
          )..add(LoadExistingItem(productId!)),
        )
      ],
      child: const AddNewItemForm(),
    );
  }
}


class AddNewItemForm extends StatefulWidget {
  final NewItemScreenState status;
  const AddNewItemForm({Key? key, this.status = NewItemScreenState.createItem}) : super(key: key);

  @override
  State<AddNewItemForm> createState() => _AddNewItemFormState();
}

class _AddNewItemFormState extends State<AddNewItemForm> {
  String? _uom;
  bool _formValid = false;
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _productNameController;
  late TextEditingController _salePriceController;
  late TextEditingController _listPriceController;
  late TextEditingController _purchasePriceController;
  late TextEditingController _brandController;
  late TextEditingController _hsnController;
  late TextEditingController _taxRateController;
  late TextEditingController _skuController;
  late bool _inEditMode;
  late String? _productId;

  @override
  void initState() {
    super.initState();
    _productNameController = TextEditingController();
    _salePriceController = TextEditingController();
    _listPriceController = TextEditingController();
    _purchasePriceController = TextEditingController();
    _brandController = TextEditingController();
    _hsnController = TextEditingController();
    _taxRateController = TextEditingController();
    _skuController = TextEditingController();
    _inEditMode = false;
    _productId = null;
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _salePriceController.dispose();
    _listPriceController.dispose();
    _purchasePriceController.dispose();
    _brandController.dispose();
    _hsnController.dispose();
    _taxRateController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    // var prod = Product(
    //   productId: _productId,
    //   description: _productName,
    //   listPrice: double.parse(_listPrice),
    //   salePrice: double.parse(_salePrice),
    //   brand: _brand,
    // );
    // BlocProvider.of<ItemBloc>(context).add(AddItem(prod));
    if (_formKey.currentState!.validate()) {
      var prod = ProductModel(
          description: _productNameController.text,
          listPrice: _listPriceController.text.isNotEmpty
              ? toFloat(_listPriceController.text)
              : null,
          salePrice: _salePriceController.text.isNotEmpty
              ? toFloat(_salePriceController.text)
              : null,
          purchasePrice: _purchasePriceController.text.isNotEmpty
              ? toFloat(_purchasePriceController.text)
              : null,
          uom: _uom,
          brand:
              _brandController.text.isNotEmpty ? _brandController.text : null,
          hsn: _hsnController.text.isNotEmpty ? _hsnController.text : null,
          tax: _taxRateController.text.isNotEmpty
              ? toFloat(_taxRateController.text)
              : null,
          skuCode: _skuController.text.isNotEmpty ? _skuController.text : null);
      BlocProvider.of<ItemBloc>(context).add(AddItem(prod));
    }
  }

  void _onUomChange(String? value) {
    setState(() {
      _uom = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ItemBloc, ItemState>(
      listener: (context, state) {
        if (state.status == ItemStatus.addingProduct) {
          showLoadingDialog(context);
        } else if (state.status == ItemStatus.addingFailure) {
          Navigator.of(context).pop();
          const snackBar = SnackBar(
            content: Text('Error Saving the item in database'),
            backgroundColor: Colors.red,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state.status == ItemStatus.addingSuccess) {
          Navigator.of(context).pop();
          const snackBar = SnackBar(
            content: Text('Successfully Created Product'),
            backgroundColor: Colors.green,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.of(context).pop();
        } else if (ItemStatus.editProduct == state.status) {
          _inEditMode = true;
          _productId = state.existingProduct!.skuCode ?? state.existingProduct!.productId;
          _productNameController.text = state.existingProduct!.description;
          _salePriceController.text = state.existingProduct!.salePrice!.toString();
          _listPriceController.text = state.existingProduct!.listPrice!.toString();
          _purchasePriceController.text = state.existingProduct!.purchasePrice!.toString();
          _brandController.text = state.existingProduct!.brand!;
          _hsnController.text = state.existingProduct!.hsn!;
          _taxRateController.text = state.existingProduct!.tax!.toString();
          _onUomChange(state.existingProduct!.uom);
        }
      },
      child: Container(
        color: Colors.white,
        child: SafeArea(
          maintainBottomViewPadding: false,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  _formValid = _formKey.currentState!.validate();
                });
              },
              autovalidateMode: AutovalidateMode.always,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          CustomTextField(
                            label: "Product Name",
                            validator:
                                NewProductFieldValidator.validateProductName,
                            controller: _productNameController,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  label: "Sale Price",
                                  textInputType: TextInputType.number,
                                  validator:
                                      NewProductFieldValidator.validatePrice,
                                  controller: _salePriceController,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: CustomDropDown<String>(
                                  value: _uom,
                                  data: [
                                    DropDownData(
                                        key: 'SQFT', value: 'Square Feet'),
                                    DropDownData(key: 'EA', value: 'Each'),
                                    DropDownData(key: 'M', value: 'Meter'),
                                  ],
                                  label: 'UOM',
                                  onChanged: _onUomChange,
                                  validator:
                                      NewProductFieldValidator.validateUOM,
                                ),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  label: "List Price",
                                  textInputType: TextInputType.number,
                                  validator:
                                      NewProductFieldValidator.validatePrice,
                                  controller: _listPriceController,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  label: "Purchase Price",
                                  textInputType: TextInputType.number,
                                  validator:
                                      NewProductFieldValidator.validatePrice,
                                  controller: _purchasePriceController,
                                ),
                              ),
                            ],
                          ),
                          CustomTextField(
                            label: "Brand",
                            controller: _brandController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              decoration: const BoxDecoration(
                                  // border: Border(
                                  //   bottom: BorderSide(color: AppColor.primary),
                                  // ),
                                  ),
                              child: const Text(
                                "Tax Detail",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: AppColor.primary),
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  label: "HSN",
                                  controller: _hsnController,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  label: "Tax Rate",
                                  textInputType: TextInputType.number,
                                  validator:
                                      NewProductFieldValidator.validateTaxRate,
                                  controller: _taxRateController,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                            label: "Barcode / SKU",
                            controller: _skuController,
                            validator: NewProductFieldValidator.validateSkuData,
                          ),
                          const SizedBox(
                            height: 300,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 16,
                    child: AppBarLeading(
                      heading: _productId ?? "New Product",
                      icon: Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  if (!_inEditMode)
                  Positioned(
                    top: 20,
                    right: 16,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteConfig.loadItemsInBulkScreen);
                      },
                      child: const Text(
                        "Bulk Import",
                        style: TextStyle(color: AppColor.primary),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 10),
                        primary: AppColor.color8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Expanded(
                            child:
                                RejectButton(label: "Cancel", onPressed: () {}),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                              child: AcceptButton(
                            label: _inEditMode ? "Update" : "Save",
                            onPressed: _formValid ? _onSubmit : null,
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
