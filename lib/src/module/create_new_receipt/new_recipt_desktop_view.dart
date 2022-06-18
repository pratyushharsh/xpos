import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

import '../../config/theme_settings.dart';
import '../item_search/bloc/item_search_bloc.dart';
import 'bloc/create_new_receipt_bloc.dart';
import 'new_receipt_view.dart';

class NewReceiptDesktopView extends StatelessWidget {
  const NewReceiptDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: BlocProvider(
            lazy: true,
            create: (ctx) => ItemSearchBloc(db: RepositoryProvider.of(ctx)),
            child: Column(
              children: [
                Container(
                  color: Colors.purple,
                  height: 35,
                  child: Row(
                    children: const [
                      Text("Header"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(child: SearchUserDisplayDesktop()),
                      // Expanded(child: TenderDisplayDesktop()),
                      Expanded(child: SaleReturnDisplayDesktop()),
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 35,
                  child: Row(
                    children: const [
                      Text("Footer"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchUserDisplayDesktop extends StatelessWidget {
  const SearchUserDisplayDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CustomerDetailDesktop(),
          const Positioned(
            child: SearchItemProductsListDesktop(),
            bottom: 70,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: CustomTextField(
              label: "Search For Products",
              onValueChange: (val) {
                BlocProvider.of<ItemSearchBloc>(context)
                    .add(SearchItemByFilter(val));
              },
            ),
            bottom: 0,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}

class SearchItemProductsListDesktop extends StatelessWidget {
  const SearchItemProductsListDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemSearchBloc, ItemSearchState>(
        builder: (builder, state) {
      if (state.products.isNotEmpty) {
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: state.products
                .map((p) => InkWell(
                      onTap: () {
                        BlocProvider.of<CreateNewReceiptBloc>(context)
                            .add(AddItemToReceipt(p));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Text(p.productId ?? p.skuCode ?? "Invalid"),
                            Text(p.description),
                            Text(
                                "${p.salePrice ?? p.listPrice} | ${p.listPrice}"),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(
                              height: 0,
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        );
      }
      return Container();
    });
  }
}

class SaleReturnDisplayDesktop extends StatelessWidget {
  const SaleReturnDisplayDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SaleHeaderBlock(),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  LineItemHeader(),
                  Divider(),
                  Expanded(
                    child: BuildLineItem(),
                  ),
                  Divider(),
                  NewReceiptSummaryWidget(),
                  Divider(),
                  NewInvoiceButtonBar()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerDetailDesktop extends StatelessWidget {
  const CustomerDetailDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              child: Icon(
                Icons.person,
                size: 40,
              ),
              radius: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                Text("Customer Name: "),
                Text("Customer Phone: "),
                Text("Customer Email: "),
                Text("Billing Address: "),
              ],
            )
          ],
        )
      ],
    );
  }
}

class TenderDisplayDesktop extends StatefulWidget {
  const TenderDisplayDesktop({Key? key}) : super(key: key);

  @override
  State<TenderDisplayDesktop> createState() => _TenderDisplayDesktopState();
}

class _TenderDisplayDesktopState extends State<TenderDisplayDesktop> {
  String selectedTender = "";
  late TextEditingController tenderController;


  @override
  void initState() {
    super.initState();
    tenderController = TextEditingController();
  }


  @override
  void dispose() {
    tenderController.dispose();
    super.dispose();
  }

  void onSelectNewTender(String val) {
    setState(() {
      selectedTender = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: DisplayTenderList(
              selectedTender: selectedTender,
              onSelectNewTender: onSelectNewTender,
            ),
            bottom: 100,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: CustomTextField(
              controller: tenderController,
              enabled: selectedTender.isNotEmpty,
              label: "Enter Tender Amount",
              onFieldSubmitted: (val) {
                print(val);
              },
            ),
            bottom: 0,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}

const tenderList = ["CASH", "CARD", "CHECK", "UPI"];

class DisplayTenderList extends StatelessWidget {
  final String selectedTender;
  final Function onSelectNewTender;
  const DisplayTenderList(
      {Key? key, required this.selectedTender, required this.onSelectNewTender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: tenderList
          .map(
            (e) => TenderListDisplayCard(
                tenderType: e,
                selected: selectedTender == e,
                onSelectNewTender: onSelectNewTender),
          )
          .toList(),
    );
  }
}

class TenderListDisplayCard extends StatelessWidget {
  final String tenderType;
  final bool selected;
  final Function onSelectNewTender;
  const TenderListDisplayCard(
      {Key? key,
      required this.tenderType,
      this.selected = false,
      required this.onSelectNewTender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Colors.green,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: selected ? Colors.green : Colors.transparent),
        // borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        onTap: () {
          onSelectNewTender(tenderType);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 80,
          width: 120,
          child: Column(
            children: [Text(tenderType)],
          ),
        ),
      ),
    );
  }
}
