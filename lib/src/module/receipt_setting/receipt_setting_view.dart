import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/widgets/appbar_leading.dart';
import 'package:receipt_generator/src/widgets/widgets.dart';

class ReceiptSettingView extends StatelessWidget {
  const ReceiptSettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: const [
                  SizedBox(
                    height: 80,
                  ),
                  ReceiptSettingInput()
                ],
              ),
            ),
            Positioned(
              top: 20,
              left: 16,
              child: AppBarLeading(
                  heading: "Receipt Setting",
                  icon: Icons.arrow_back,
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
            ),
            Positioned(
              top: 20,
              right: 16,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Save",
                  style: TextStyle(color: AppColor.primary),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  primary: AppColor.color8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReceiptSettingInput extends StatelessWidget {
  const ReceiptSettingInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: "Store Phone Number",
          textAlign: TextAlign.start,
          textInputType: TextInputType.phone,
          onValueChange: (val) {},
        ),
        CustomTextField(
          label: "Tagline",
          textAlign: TextAlign.center,
          onValueChange: (val) {},
        ),
        CustomTextField(
          label: "Store Address",
          textAlign: TextAlign.center,
          style: const TextStyle(),
          minLines: 6,
          maxLines: 10,
          onValueChange: (val) {},
        ),
        CustomTextField(
          label: "Footer title",
          textAlign: TextAlign.center,
          onValueChange: (val) {},
        ),
        CustomTextField(
          label: "Footer Subtitle",
          minLines: 5,
          maxLines: 10,
          textAlign: TextAlign.center,
          onValueChange: (val) {},
        ),
      ],
    );
  }
}
