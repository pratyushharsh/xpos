import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../config/theme_settings.dart';
import '../../widgets/appbar_leading.dart';
import 'bloc/login_bloc.dart';

class VerifyUserView extends StatefulWidget {
  const VerifyUserView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const VerifyUserView());
  }

  @override
  State<VerifyUserView> createState() => _VerifyUserViewState();
}

class _VerifyUserViewState extends State<VerifyUserView> {
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
    return Container(
      color: AppColor.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.background,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        'Enter code send',
                        style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'to your number',
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
                            color: AppColor.color5,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      OTPTextField(
                          controller: otpController,
                          length: 6,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceEvenly,
                          // fieldWidth: 55,
                          fieldStyle: FieldStyle.underline,
                          outlineBorderRadius: 15,
                          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          onChanged: (pin) {
                          },
                          onCompleted: (pin) {
                            BlocProvider.of<LoginBloc>(context)
                                .add(VerifyUserOtp(pin));
                          }),
                      //
                    ],
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
