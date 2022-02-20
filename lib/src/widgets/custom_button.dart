import 'package:flutter/material.dart';

import '../config/theme_settings.dart';

class AcceptButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const AcceptButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // onPressed: null,
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(color: AppColor.textColorSecondary),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 14),
        primary: AppColor.primary,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
  }
}

class RejectButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const RejectButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(color: AppColor.primary),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 14),
        primary: AppColor.color8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      ),
    );
  }
}
