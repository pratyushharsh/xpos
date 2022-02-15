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
        this.obscureText = false,
        this.prefixIconConstraint = const BoxConstraints(minWidth: 40, minHeight: 40)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        if (helperText != null && helperText!.isNotEmpty)
          Text(helperText!,
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black38,
                  fontSize: 12)),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          keyboardType: textInputType,
          initialValue: initialValue,
          minLines: minLines,
          maxLines: maxLines,
          onChanged: onValueChange,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIconConstraints: prefixIconConstraint,
            prefixIcon: icon,
            contentPadding: const EdgeInsets.all(12),
            border: const OutlineInputBorder(),
            isDense: true,
            errorText: errorText,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}