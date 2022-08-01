import 'package:flutter/material.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/custom_text_field.dart';

class EmployeeDetailView extends StatelessWidget {
  const EmployeeDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 70,
                      ),
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColor.background,
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 50,
                        ),
                      ),
                      CustomTextField(
                        label: 'First Name',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                      CustomTextField(
                        label: 'Middle Name',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                      CustomTextField(
                        label: 'Last Name',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                      CustomTextField(
                        label: 'Phone',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                      CustomTextField(
                        label: 'Email',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                      CustomTextField(
                        label: 'Language',
                        onFieldSubmitted: (value) {
                          // print(value);
                        },
                      ),
                    ],
                  )
                )
              ),
              Positioned(
                top: 20,
                left: 16,
                child: AppBarLeading(
                  heading: "Employee",
                  icon: Icons.arrow_back,
                  onTap: () {
                    Navigator.of(context).pop();
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
