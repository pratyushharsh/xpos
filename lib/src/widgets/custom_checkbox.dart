import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  const CustomCheckbox({Key? key, this.value = false, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged!(!value);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.formInputBorder, width: 2.0),
              borderRadius: BorderRadius.circular(3)
          // color: AppColor.primary,
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 18.0,
                color: AppColor.primary,
              )
            : const Icon(
                Icons.check_box_outline_blank,
                size: 18.0,
                color: AppColor.background,
              ),
      ),
    );
  }
}
