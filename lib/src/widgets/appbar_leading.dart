import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

class AppBarLeading extends StatelessWidget {
  final String heading;
  final IconData icon;
  final GestureTapCallback? onTap;
  const AppBarLeading({Key? key, required this.heading, required this.icon, this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10)),
            height: 40,
            width: 40,
            child: Icon(
              icon,
              color: AppColor.iconColor,
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          heading,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 26),
        )
      ],
    );
  }
}
