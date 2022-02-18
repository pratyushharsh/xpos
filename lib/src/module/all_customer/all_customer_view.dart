import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/entity/entity.dart';
import 'package:receipt_generator/src/module/all_customer/bloc/all_customer_bloc.dart';

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
            return const CircularProgressIndicator();
          }
          return ListView.builder(
              itemCount: state.customers.length,
              itemBuilder: (ctx, idx) {
                return CustomerViewCard(contact: state.customers[idx]);
              });
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
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${contact.firstName} ${contact.lastName}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            if (contact.phoneNumber != null) Text('${contact.phoneNumber}'),
            if (contact.email != null) Text('${contact.email}'),
            if (contact.address != null || contact.state != null || contact.city != null || contact.country != null )
            Text(
                '${contact.address ?? ''} ${contact.state ?? ''} ${contact.city ?? ''} ${contact.country ?? ''}'),
          ],
        ),
      ),
    );
  }
}
