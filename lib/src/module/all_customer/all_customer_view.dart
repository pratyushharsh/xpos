import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/route_config.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/entity/pos/entity.dart';
import 'package:receipt_generator/src/module/all_customer/bloc/all_customer_bloc.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

class AllCustomerView extends StatelessWidget {
  const AllCustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => AllCustomerBloc(db: RepositoryProvider.of(context))
        ..add(LoadAllCustomer()),
      child: BlocBuilder<AllCustomerBloc, AllCustomerState>(
        builder: (context, state) {
          if (state.status == AllCustomerStatus.loading) {
            return const MyLoader(color: AppColor.color6,);
          }
          return RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<AllCustomerBloc>(context).add(LoadAllCustomer());
            },
            child: ListView.builder(
                itemCount: state.customers.length,
                itemBuilder: (ctx, idx) {
                  return CustomerViewCard(contact: state.customers[idx]);
                }),
          );
        },
      ),
    );
  }
}

class CustomerViewCard extends StatelessWidget {
  final ContactEntity contact;
  const CustomerViewCard({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(RouteConfig.customerDetailScreen);
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              if (contact.phoneNumber != null) Text('${contact.phoneNumber}'),
              if (contact.email != null) Text('${contact.email}'),
              if (contact.billingAddress != null )
              Text(
                  '${contact.billingAddress}'),
            ],
          ),
        ),
      ),
    );
  }
}
