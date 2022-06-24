import 'package:flutter/material.dart';
import 'package:receipt_generator/src/model/model.dart';
import 'package:receipt_generator/src/module/all_customer/all_customer_view.dart';
import 'package:receipt_generator/src/module/business/bloc/business_bloc.dart';
import 'package:receipt_generator/src/module/business/business_view.dart';
import 'package:receipt_generator/src/module/create_new_item/add_new_item_view.dart';
import 'package:receipt_generator/src/module/create_new_receipt/new_receipt_view.dart';
import 'package:receipt_generator/src/module/customer_detail/customer_detail_screen.dart';
import 'package:receipt_generator/src/module/home/home_view.dart';
import 'package:receipt_generator/src/module/invoice/invoice_view.dart';
import 'package:receipt_generator/src/module/list_all_item/list_all_item_view.dart';
import 'package:receipt_generator/src/module/list_all_receipt/list_all_receipt_view.dart';
import 'package:receipt_generator/src/module/load_item_bulk/load_item_bulk_view.dart';
import 'package:receipt_generator/src/module/receipt_display/invoice_display_view.dart';
import 'package:receipt_generator/src/module/receipt_display/receipt_display_view.dart';
import 'package:receipt_generator/src/module/receipt_setting/receipt_setting_view.dart';
import 'package:receipt_generator/src/module/splash_screen/splash_screen_view.dart';

import '../module/create_new_item/modify_line_item_screen.dart';
import '../module/receipt_display/invoice_display.dart';

class RouteConfig {

  static const String splashScreen = "/";
  static const String homeScreen = "/home";
  static const String editItemScreen = "/edit-item";
  static const String editSaleLineItemScreen = "/edit-sale-line-item";
  static const String allItemsScreen = "/list-items";
  static const String allReceiptScreen = "/list-receipt";
  static const String allCustomerScreen = "/all-customer";
  static const String loadItemsInBulkScreen = "/load-in-bulk";
  static const String createReceiptScreen = "/create-receipt";
  static const String receiptDisplayScreen = "/receipt-display";
  static const String invoiceDisplayScreen = "/invoice-display";
  static const String invoiceViewScreen = "/invoice-view";
  static const String businessViewScreen = "/business-view";
  static const String receiptSettingViewScreen = "/receipt-setting";
  static const String customerDetailScreen = "/customer-detail";


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case editItemScreen:
        var pId = settings.arguments;
        if (pId is String) {
          return MaterialPageRoute(builder: (_) => AddNewItemScreen(productId: pId,));
        }
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
        var bId = settings.arguments;
        if (bId is int) {
          return MaterialPageRoute(builder: (_) => BusinessView(operation: BusinessOperation.update, businessId: bId,));
        }
        return MaterialPageRoute(builder: (_) => const BusinessView());
      case receiptSettingViewScreen:
        return MaterialPageRoute(builder: (_) => const ReceiptSettingView());
      case receiptDisplayScreen:
        var transId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => ReceiptDisplayView(transactionId: transId,));
      // case invoiceDisplayScreen:
      //   var transId = settings.arguments as int;
      //   return MaterialPageRoute(builder: (_) => InvoiceDisplayView(transactionId: transId,));
      case invoiceDisplayScreen:
        var transId = settings.arguments as int;
        return MaterialPageRoute(builder: (_) => AppInvoiceDisplay(transactionId: transId,));
      case customerDetailScreen:
        var contactId = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => CustomerDetailScreen(userId: contactId,));
      case editSaleLineItemScreen:
        var line = settings.arguments as SaleLine;
        return MaterialPageRoute(builder: (_) => ModifyLineItemScreen(saleLine: line,));
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