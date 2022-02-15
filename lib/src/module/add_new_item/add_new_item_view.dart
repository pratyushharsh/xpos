import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/item/bloc/item_bloc.dart';
import 'package:receipt_generator/src/widgets/custom_text_field.dart';

class AddNewItemScreen extends StatefulWidget {
  const AddNewItemScreen({Key? key}) : super(key: key);

  @override
  State<AddNewItemScreen> createState() => _AddNewItemScreenState();
}

class _AddNewItemScreenState extends State<AddNewItemScreen> {
  late String _productId = '';
  late String _productName;
  late String _listPrice;
  late String _salePrice;
  late String _brand;

  void _onProductIdChange(String val) {
    setState(() {
      _productId = val;
    });
  }

  void _onProductNameChange(String val) {
    setState(() {
      _productName = val;
    });
  }

  void _onListPriceChange(String val) {
    setState(() {
      _listPrice = val;
    });
  }

  void _onSalePriceChange(String val) {
    setState(() {
      _salePrice = val;
    });
  }

  void _onBrandChange(String val) {
    setState(() {
      _brand = val;
    });
  }

  void _onSubmit() {
    var prod = Product(
        productId: int.parse(_productId),
        description: _productName,
        listPrice: double.parse(_listPrice),
        salePrice: double.parse(_salePrice),
        brand: _brand,);
    BlocProvider.of<ItemBloc>(context).add(AddItem(prod));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CustomTextField(
                label: "Product Id",
                onValueChange: _onProductIdChange,
                textInputType: TextInputType.number,
              ),
              CustomTextField(
                label: "Product Name",
                onValueChange: _onProductNameChange,
              ),
              // CustomTextField(
              //   label: "Description",
              //   minLines: 5,
              //   maxLines: 10,
              //   onValueChange: _onDescChange,
              // ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      label: "List Price",
                      textInputType: TextInputType.number,
                      onValueChange: _onListPriceChange,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: CustomTextField(
                      label: "Sale Price",
                      textInputType: TextInputType.number,
                      onValueChange: _onSalePriceChange,
                    ),
                  ),
                ],
              ),
              CustomTextField(
                label: "Brand",
                onValueChange: _onBrandChange,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: _onSubmit, child: const Text("Save")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
