import 'package:flutter/material.dart';


class AddressWidget extends StatelessWidget {
  final String address;
  final String label;
  const AddressWidget({Key? key, required this.address, required this.label}) : super(key: key);

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
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            //color: AppColor.background,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.8, color: const Color(0xFF6B7281))),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 100,
              minWidth: double.infinity,
              maxWidth: double.infinity,
            ),
            child: Text(
              address,
              style: const TextStyle(fontWeight: FontWeight.bold),
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