import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/customer_detail/bloc/customer_detail_bloc.dart';
import 'package:receipt_generator/src/module/list_all_receipt/list_all_receipt_view.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';

class CustomerDetailScreen extends StatelessWidget {
  final String userId;
  const CustomerDetailScreen({Key? key, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocProvider(
            create: (context) => CustomerDetailBloc(
                customerId: userId, db: RepositoryProvider.of(context))
              ..add(LoadCustomerPurchaseList()),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 20,
                  left: 16,
                  child: AppBarLeading(
                    heading: "User# $userId",
                    icon: Icons.arrow_back,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height - 60,
                      child: const UserProfileDetail()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfileDetail extends StatelessWidget {
  const UserProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: const [
          TabBar(
            indicatorColor: AppColor.primary,
            unselectedLabelColor: AppColor.subtitleColorPrimary,
            labelColor: AppColor.primary,
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                CustomerPurchaseListDisplay(),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomerPurchaseListDisplay extends StatelessWidget {
  const CustomerPurchaseListDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerDetailBloc, CustomerDetailState>(
      builder: (context, state) {
        if (state.purchaseHistory.isNotEmpty) {
          return ListView.builder(
              itemCount: state.purchaseHistory.length,
              itemBuilder: (ctx, idx) {
                return ReceiptHeaderCard(receipt: state.purchaseHistory[idx]);
              });
        }
        return Container();
      },
    );
  }
}
