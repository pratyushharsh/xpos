import 'package:flutter/material.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

// Step To Return A Order

class ReturnOrderView extends StatefulWidget {
  const ReturnOrderView({Key? key}) : super(key: key);

  @override
  State<ReturnOrderView> createState() => _ReturnOrderViewState();
}

class _ReturnOrderViewState extends State<ReturnOrderView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SearchReturnOrderForm(),
    );
  }
}

class SearchReturnOrderForm extends StatelessWidget {
  const SearchReturnOrderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          const Text("Return Order", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          CustomTextField(label: "Order No", onFieldSubmitted: (value) {

          },),
        ],
      ),
    );
  }
}
