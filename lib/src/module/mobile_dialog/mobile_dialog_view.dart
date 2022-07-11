import 'package:flutter/material.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';

class MobileDialogView extends StatelessWidget {
  final Widget child;
  const MobileDialogView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              child,
              // Positioned(
              //   top: 20,
              //   left: 16,
              //   child: AppBarLeading(
              //     heading: "Mob View",
              //     icon: Icons.arrow_back,
              //     onTap: () {
              //       Navigator.of(context).pop();
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
