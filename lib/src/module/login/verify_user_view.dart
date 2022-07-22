import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import '../../widgets/my_loader.dart';
import 'bloc/login_bloc.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const VerifyUserView());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: Stack(
            children: [
              Positioned(
                child: Align(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth:
                          min(MediaQuery.of(context).size.width, 600),
                      maxHeight:
                          min(MediaQuery.of(context).size.height, 600),
                    ),
                    child: const VerifyOtpForm(),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 16,
                child: AppBarLeading(
                  icon: Icons.arrow_back,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyOtpForm extends StatefulWidget {
  const VerifyOtpForm({Key? key}) : super(key: key);

  @override
  State<VerifyOtpForm> createState() => _VerifyOtpFormState();
}

class _VerifyOtpFormState extends State<VerifyOtpForm> {
  OtpFieldController otpController = OtpFieldController();

  @override
  void initState() {
    super.initState();
    otpController = OtpFieldController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Enter code send to your number',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "We will send it to your number +91 9430123120",
                  style: TextStyle(
                      color: AppColor.color5, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25,
                ),
                OTPTextField(
                  controller: otpController,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
                  // fieldWidth: 55,
                  fieldStyle: FieldStyle.underline,
                  inputFormatter: [
                    FilteringTextInputFormatter.allow(RegExp(r'\d')),
                  ],
                  outlineBorderRadius: 15,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  onChanged: (pin) {},
                  onCompleted: (pin) {
                    BlocProvider.of<LoginBloc>(context).add(VerifyUserOtp(pin));
                  },
                ),
                Expanded(
                  child: Align(
                    child: state.status == LoginStatus.verifyOtpLoading ? const MyLoader(
                      color: AppColor.primary,
                    ) : Container(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
