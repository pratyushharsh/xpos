import 'package:flutter/material.dart';
import 'package:receipt_generator/src/module/all_customer/all_customer_view.dart';
import 'package:receipt_generator/src/module/business/business_view.dart';
import 'package:receipt_generator/src/module/create_new_item/add_new_item_view.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_receipt_view.dart';
import 'package:receipt_generator/src/module/home/home_view.dart';
import 'package:receipt_generator/src/module/invoice/invoice_view.dart';
import 'package:receipt_generator/src/module/list_all_item/list_all_item_view.dart';
import 'package:receipt_generator/src/module/list_all_receipt/list_all_receipt_view.dart';
import 'package:receipt_generator/src/module/load_item_bulk/load_item_bulk_view.dart';
import 'package:receipt_generator/src/module/receipt_display/receipt_display_view.dart';

class RouteConfig {

  static const String homeScreen = "/";
  static const String addItemScreen = "/add-item";
  static const String allItemsScreen = "/list-items";
  static const String allReceiptScreen = "/list-receipt";
  static const String allCustomerScreen = "/all-customer";
  static const String loadItemsInBulkScreen = "/load-in-bulk";
  static const String createReceiptScreen = "/create-receipt";
  static const String receiptDisplayScreen = "/receipt-display";
  static const String invoiceViewScreen = "/invoice-view";
  static const String businessViewScreen = "/business-view";


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case addItemScreen:
        return MaterialPageRoute(builder: (_) => const AddNewItemScreen());
      case allItemsScreen:
        return MaterialPageRoute(builder: (_) => const AllProductsList());
      case allReceiptScreen:
        return MaterialPageRoute(builder: (_) => const ListAllReceiptView());
      case allCustomerScreen:
        return MaterialPageRoute(builder: (_) => const AllCustomerView());
      case loadItemsInBulkScreen:
        return MaterialPageRoute(builder: (_) => const LoadItemInBulk());
      case createReceiptScreen:
        return MaterialPageRoute(builder: (_) => const NewReceiptView());
      case invoiceViewScreen:
        return MaterialPageRoute(builder: (_) => const InvoiceView());
      case businessViewScreen:
        return MaterialPageRoute(builder: (_) => const BusinessView());
      case receiptDisplayScreen:
        var transId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => ReceiptDisplayView(transactionId: transId,));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}