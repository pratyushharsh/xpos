import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

class CustomDropDown<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<DropDownData<T>> data;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  const CustomDropDown(
      {Key? key,
      required this.data,
      this.value,
      this.onChanged,
        this.validator,
      required this.label})
      : super(key: key);

  DropdownMenuItem<T> buildMenuItem(DropDownData item) =>
      DropdownMenuItem(value: item.key, child: Text(item.value));

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Color(0xFF6B7281)),
        ),
        const SizedBox(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(
              // color: AppColor.background,
              borderRadius: BorderRadius.circular(5)),
          child: DropdownButtonFormField<T>(
            validator: validator,
            // style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            decoration: const InputDecoration(
              errorStyle: TextStyle(height: 0.65),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
              ),
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(),
              isDense: true,
            ),
            value: value,
            isDense: true,
            isExpanded: true,
            items: data.map((e) => buildMenuItem(e)).toList(),
            onChanged: onChanged,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class DropDownData<T> {
  final T key;
  final String value;

  DropDownData({required this.key, required this.value});
}
