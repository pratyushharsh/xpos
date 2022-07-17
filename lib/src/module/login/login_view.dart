import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';
import 'package:receipt_generator/src/module/login/bloc/login_bloc.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginView());
  }

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                        'Enter your',
                        style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.4,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'mobile number',
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
                            color: AppColor.color5,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 25,
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
                          prefixIcon: Padding(padding: EdgeInsets.all(4), child: Text('+91 ', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                              letterSpacing: 1.4) ,)),
                          hintStyle:
                              TextStyle(color: AppColor.subtitleColorPrimary),
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
                      ElevatedButton(
                          onPressed: phoneNumber.length == 10
                              ? () {
                                  // FocusScope.of(context).unfocus();
                                  BlocProvider.of<LoginBloc>(context)
                                      .add(LoginUserWithPhone("+91$phoneNumber"));
                                }
                              : null,
                          child: const Text("Sign In"))
                    ],
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
