import 'package:flutter/material.dart';
import 'package:receipt_generator/src/module/return_order/return_order_view.dart';

import '../../entity/pos/entity.dart';


// ReturnOrderView(currentOrderLineItem: BlocProvider.of<CreateNewReceiptBloc>(context).state.lineItem)


// class ReturnOrderViewMobile extends StatelessWidget {
//   final List<TransactionLineItemEntity> currentOrderLineItem;
//   const ReturnOrderViewMobile({Key? key, required this.currentOrderLineItem}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Scaffold(
//           body: Stack(children: [
//             ReturnOrderView(currentOrderLineItem: currentOrderLineItem)
//           ])
//         ),
//       ),
//     );
//   }
// }
