import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/login/bloc/login_bloc.dart';
import 'package:receipt_generator/src/widgets/custom_button.dart';
import 'package:receipt_generator/src/widgets/my_loader.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginView());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    "assets/logo/logo_revert.svg",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withOpacity(0.05),
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth:
                          min(MediaQuery.of(context).size.width, 600),
                      maxHeight:
                          min(MediaQuery.of(context).size.height, 600),
                    ),
                    child: const LoginForm(),
                  ),
                ),
              ),
              // Positioned(
              //   top: 20,
              //   left: 16,
              //   child: AppBarLeading(
              //     icon: Icons.arrow_back,
              //     onTap: () {
              //       Navigator.of(context).pop();
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _phoneController;
  late String phoneNumber;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    phoneNumber = '';
  }

  @override
  void dispose() {
    _phoneController.dispose();
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
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Enter your mobile number',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "We will send you a confirmation code",
                  style: TextStyle(
                      color: AppColor.color5, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      letterSpacing: 1.4),
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "9999900000",
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          '+91 ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                              letterSpacing: 1.4),
                        )),
                    hintStyle: TextStyle(color: AppColor.subtitleColorPrimary),
                    // prefixStyle: TextStyle(
                    //     color: Colors.black,
                    //     fontSize: 35,
                    //     fontWeight: FontWeight.w500,
                    //     letterSpacing: 1),
                  ),
                  onChanged: (val) {
                    setState(() {
                      phoneNumber = val;
                    });
                  },
                ),
                Expanded(child: Container()),
                Row(children: [
                  if (state.status == LoginStatus.loadingLogin)
                    const Expanded(child: MyLoader(color: AppColor.primary,)),
                  if (state.status != LoginStatus.loadingLogin)
                    Expanded(
                      child: AcceptButton(
                        label: "Sign In",
                        onPressed: phoneNumber.length == 10
                            ? () {
                                // FocusScope.of(context).unfocus();
                                BlocProvider.of<LoginBloc>(context)
                                    .add(LoginUserWithPhone("+91$phoneNumber"));
                              }
                            : null,
                      ),
                    )
                ])
              ],
            ),
          );
        },
      ),
    );
  }
}
