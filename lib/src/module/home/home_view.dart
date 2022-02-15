import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/module/load_customer_contact/bloc/load_customer_contact_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Home");
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RouteConfig.addItemScreen);
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConfig.allItemsScreen);
                },
                child: const Text("All Item")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConfig.loadItemsInBulkScreen);
                },
                child: const Text("Load Item In Bulk")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConfig.createReceiptScreen);
                },
                child: const Text("Create New Receipt")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteConfig.allReceiptScreen);
                },
                child: const Text("List Previous Receipts")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConfig.invoiceViewScreen);
                },
                child: const Text("Invoice View Screen")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RouteConfig.allCustomerScreen);
                },
                child: const Text("All Customer View")),
            const LoadCustomerFromPhoneButton()
          ],
        ),
      ),
    );
  }
}

class LoadCustomerFromPhoneButton extends StatelessWidget {
  const LoadCustomerFromPhoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (ctx) =>
          LoadCustomerContactBloc(db: RepositoryProvider.of(ctx)),
      child: BlocBuilder<LoadCustomerContactBloc, LoadCustomerContactState>(
        builder: (context, state) {

          if (state.status == LoadCustomerContactStatus.permissionDenied) {
            return const ElevatedButton(
                onPressed: null,
                child: Text("Load Customer From Phone"));
          } else if (state.status == LoadCustomerContactStatus.loading) {
            return const ElevatedButton(
                onPressed: null,
                child: CircularProgressIndicator());
          }
          return ElevatedButton(
              onPressed: () {
                BlocProvider.of<LoadCustomerContactBloc>(context).add(LoadCustomerContactFromPhone());
              },
              child: const Text("Load Customer From Phone")
          );
        },
      ),
    );
  }
}
