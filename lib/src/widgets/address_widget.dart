import 'package:flutter/material.dart';


class TextFieldPlaceholderWidget extends StatelessWidget {
  final String value;
  final String label;
  final double minHeight;
  final GestureTapCallback? onTap;
  const TextFieldPlaceholderWidget({Key? key, required this.value, required this.label, this.minHeight = 100, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:
          const TextStyle(fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
        ),
        const SizedBox(
          height: 1,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              //color: AppColor.background,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.8, color: const Color(0xFF6B7281))),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: minHeight,
                minWidth: double.infinity,
                maxWidth: double.infinity,
              ),
              child: Text(
                value,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}