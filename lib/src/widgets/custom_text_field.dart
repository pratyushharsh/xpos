import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? helperText;
  final int minLines;
  final int maxLines;
  final Widget? icon;
  final String? initialValue;
  final ValueChanged<String>? onValueChange;
  final String? errorText;
  final TextInputType? textInputType;
  final BoxConstraints? prefixIconConstraint;
  final TextEditingController? controller;
  final bool obscureText;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final TextStyle style;
  final TextAlign textAlign;

  const CustomTextField(
      {Key? key,
      this.icon,
      this.helperText,
      required this.label,
      this.maxLines = 1,
      this.minLines = 1,
      this.initialValue,
      this.onValueChange,
      this.textInputType,
      this.errorText,
      this.controller,
      this.focusNode,
      this.validator,
      this.obscureText = false,
      this.style = const TextStyle(
        fontWeight: FontWeight.w600,
      ),
      this.textAlign = TextAlign.start,
      this.prefixIconConstraint =
          const BoxConstraints(minWidth: 40, minHeight: 40)})
      : super(key: key);

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
        if (helperText != null && helperText!.isNotEmpty)
          Text(helperText!,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black38,
                  fontSize: 12)),
        const SizedBox(
          height: 1,
        ),
        Container(
          decoration: BoxDecoration(
              //color: AppColor.background,
              borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            validator: validator,
            focusNode: focusNode,
            controller: controller,
            keyboardType: textInputType,
            initialValue: initialValue,
            minLines: minLines,
            maxLines: maxLines,
            onChanged: onValueChange,
            obscureText: obscureText,
            cursorColor: const Color(0xFFB1B4E6),
            textAlign: textAlign,
            style: style,
            decoration: InputDecoration(
              errorStyle:
                  const TextStyle(height: 1, overflow: TextOverflow.fade),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFB1B4E6), width: 2.0),
              ),
              prefixIconConstraints: prefixIconConstraint,
              prefixIcon: icon,
              contentPadding: const EdgeInsets.all(12),
              border: const OutlineInputBorder(),
              isDense: true,
              errorText: errorText,
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
