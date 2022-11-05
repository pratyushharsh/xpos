import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/model/product.dart';
import 'package:receipt_generator/src/module/create_new_item/product_field_validator.dart';
import 'package:receipt_generator/src/module/item/bloc/item_bloc.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/custom_checkbox.dart';
import 'package:receipt_generator/src/widgets/custom_text_field.dart';
import 'package:receipt_generator/src/widgets/loading.dart';
import 'package:validators/sanitizers.dart';

import '../../config/defaults.dart';
import '../../entity/config/code_value_entity.dart';
import '../../entity/pos/tax_group_entity.dart';
import '../../repositories/tax_repository.dart';
import '../../widgets/code_value_dropdown.dart';
import '../../widgets/custom_image.dart';

enum NewItemScreenState { editItem, createItem }

class AddNewItemScreen extends StatelessWidget {
  final String? productId;
  const AddNewItemScreen({Key? key, this.productId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ItemBloc(
              productRepository: RepositoryProvider.of(context),
              authenticationBloc: BlocProvider.of(context),
              sequenceRepository: RepositoryProvider.of(context))
            ..add(LoadExistingItem(productId)),
        )
      ],
      child: const AddNewItemForm(),
    );
  }
}

class AddNewItemForm extends StatefulWidget {
  final NewItemScreenState status;
  const AddNewItemForm({Key? key, this.status = NewItemScreenState.createItem})
      : super(key: key);

  @override
  State<AddNewItemForm> createState() => _AddNewItemFormState();
}

class _AddNewItemFormState extends State<AddNewItemForm> {
  CodeValueEntity? _uom;
  TaxGroupEntity? _taxGroup;
  bool _formValid = false;
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _productNameController;
  late TextEditingController _productDescriptionController;
  late TextEditingController _salePriceController;
  late TextEditingController _listPriceController;
  late TextEditingController _purchasePriceController;
  late TextEditingController _brandController;
  late TextEditingController _hsnController;
  late TextEditingController _skuController;
  late bool _inEditMode;
  late String? _productId;
  late bool _priceIncludeTax;
  late List<String> _imageUrls;

  @override
  void initState() {
    super.initState();
    _productNameController = TextEditingController();
    _productDescriptionController = TextEditingController();
    _salePriceController = TextEditingController();
    _listPriceController = TextEditingController();
    _purchasePriceController = TextEditingController();
    _brandController = TextEditingController();
    _hsnController = TextEditingController();
    _skuController = TextEditingController();
    _inEditMode = false;
    _productId = null;
    _priceIncludeTax = false;
    _imageUrls = [];

    _fetchData();
  }

  void _fetchData() async {
    // var taxRepo = RepositoryProvider.of<TaxRepository>(context);
    // var _taxGroup = await taxRepo.getAllTaxGroups();
    // setState(() {
    //   taxGroups = _taxGroup;
    // });
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _productDescriptionController.dispose();
    _salePriceController.dispose();
    _listPriceController.dispose();
    _purchasePriceController.dispose();
    _brandController.dispose();
    _hsnController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      var prod = ProductModel(
          productId: _productId,
          enable: true,
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
          uom: _uom?.description ?? DefaultConfig.uom().code,
          brand:
              _brandController.text.isNotEmpty ? _brandController.text : null,
          hsn: _hsnController.text.isNotEmpty ? _hsnController.text : null,
          tax: 0.0,
          skuCode: _skuController.text.isNotEmpty ? _skuController.text : null);
      BlocProvider.of<ItemBloc>(context).add(AddItem(prod));
    }
  }

  void _onUomChange(CodeValueEntity? value) {
    setState(() {
      _uom = value;
    });
  }

  void _onTaxGroupChange(TaxGroupEntity? value) {
    setState(() {
      _taxGroup = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemBloc, ItemState>(
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
          setState(() {
            _inEditMode = true;
            _uom = CodeValueEntity(
                category: 'UOM',
                code: state.existingProduct!.uom,
                description: state.existingProduct!.uom);
            // @TODO
            _taxGroup = RepositoryProvider.of<TaxRepository>(context)
                .getTaxGroupId(state.existingProduct!.taxGroupId);
            _productId = state.existingProduct!.skuCode ??
                state.existingProduct!.productId;
            _productNameController.text = state.existingProduct!.displayName;
            _salePriceController.text =
                state.existingProduct!.salePrice!.toString();
            _listPriceController.text =
                state.existingProduct!.listPrice?.toString() ?? "";
            _brandController.text = state.existingProduct?.brand ?? "";
            _hsnController.text = state.existingProduct?.hsn ?? "";
            _skuController.text = state.existingProduct!.skuCode ?? "";
            _formKey.currentState!.validate();
            _imageUrls = state.existingProduct!.imageUrl;
          });
        }
      },
      builder: (context, state) {
        return Container(
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (state.status != ItemStatus.loading ||
                        state.status != ItemStatus.initial)
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
                              ProductItemsImage(
                                imageUrl: _imageUrls,
                              ),
                              CustomTextField(
                                label: "Product Name",
                                validator: NewProductFieldValidator
                                    .validateProductName,
                                controller: _productNameController,
                                minLines: 1,
                                maxLines: 3,
                              ),
                              CustomTextField(
                                label: "Product Description",
                                controller: _productDescriptionController,
                                minLines: 7,
                                maxLines: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      label: "Sale Price",
                                      textInputType: TextInputType.number,
                                      validator: NewProductFieldValidator
                                          .validatePrice,
                                      controller: _salePriceController,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: CodeValueDropDown(
                                    label: "UOM",
                                    onChanged: _onUomChange,
                                    category: "UOM",
                                    value: _uom,
                                    validator: (value) {
                                      return NewProductFieldValidator
                                          .validateUOM(value?.code);
                                    },
                                  ))
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      label: "List Price",
                                      textInputType: TextInputType.number,
                                      validator: NewProductFieldValidator
                                          .validatePrice,
                                      controller: _listPriceController,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      label: "Brand",
                                      controller: _brandController,
                                    ),
                                  ),
                                ],
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
                                height: 15,
                              ),
                              Row(
                                children: [
                                  CustomCheckbox(
                                    value: _priceIncludeTax,
                                    onChanged: (val) {
                                      setState(() {
                                        _priceIncludeTax = val;
                                      });
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Price Include Tax",
                                    style: TextStyle(color: Color(0xFF6B7281)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
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
                                    child: CustomDropDown<TaxGroupEntity>(
                                      value: _taxGroup,
                                      label: 'Tax Group',
                                      itemAsString: (TaxGroupEntity? value) =>
                                          value?.name ?? "",
                                      asyncItems: (filter) async {
                                        return await RepositoryProvider.of<
                                                TaxRepository>(context)
                                            .getAllTaxGroups();
                                      },
                                      onChanged: _onTaxGroupChange,
                                      validator: NewProductFieldValidator
                                          .validateTaxGroup,
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
                                validator:
                                    NewProductFieldValidator.validateSkuData,
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
                            elevation: 0, backgroundColor: AppColor.color8,
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 10),
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
                              child: RejectButton(
                                  label: "Cancel", onPressed: () {}),
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
        );
      },
    );
  }
}

class ProductItemsImage extends StatefulWidget {
  final List<String> imageUrl;
  const ProductItemsImage({Key? key, required this.imageUrl}) : super(key: key);
  @override
  State<ProductItemsImage> createState() => _ProductItemsImageState();
}

class _ProductItemsImageState extends State<ProductItemsImage> {
  String selectedUrl = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.imageUrl.isNotEmpty) {
        selectedUrl = widget.imageUrl[0];
      }
    });
  }

  @override
  void didUpdateWidget(ProductItemsImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      if (widget.imageUrl.isNotEmpty) {
        selectedUrl = widget.imageUrl[0];
      }
    });
  }

  Widget _buildHorizontal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: 400,
          child: selectedUrl.isNotEmpty
              ? CustomImage(url: selectedUrl)
              : Container(),
        ),
        SizedBox(
          height: 400,
          child: Wrap(
            direction: Axis.vertical,
            children: widget.imageUrl
                .map((e) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedUrl = e;
                        });
                      },
                      child: CustomImage(
                        url: e,
                        height: 100,
                        width: 100,
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildVertical() {
    return Column(
      children: [
        selectedUrl.isNotEmpty ? CustomImage(url: selectedUrl) : Container(),
        Wrap(
          direction: Axis.horizontal,
          children: widget.imageUrl
              .map((e) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedUrl = e;
                      });
                    },
                    child: CustomImage(
                      url: e,
                      height: 60,
                      width: 50,
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return size.width < 600 ? _buildVertical() : _buildHorizontal();
  }
}
