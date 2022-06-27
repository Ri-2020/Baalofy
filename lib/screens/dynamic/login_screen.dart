// import 'dart:html';

import 'package:finalap/components/primary_button.dart';
import 'package:finalap/components/secondary_button.dart';
import 'package:finalap/components/text_form_field.dart';
import 'package:finalap/constants.dart';
// import 'package:finalap/main.dart';
import 'package:finalap/routes.dart';
import 'package:finalap/screens/static/background.dart';
// import 'package:finalap/services/auth/auth_provider.dart';
// import 'package:finalap/services/auth/auth_service.dart';
// import 'package:finalap/services/auth/auth_user.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String otpText = "Get OTP";
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  // double opacityChange = 0.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        margin: EdgeInsets.only(top: 0.1 * size.width),
        width: 0.8 * size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/baalofy_without_back.png",
              height: 0.3 * size.width,
            ),
            SizedBox(
              height: 0.1 * size.width,
              child: const Text(
                "You will save time!",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: HEADINGFONTSIZE2,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
                child: Column(
              children: <Widget>[
                //EMAIL TEXTBOX
                TextFormFieldStyled(
                  icon: const Icon(Icons.email),
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  lable: "Email Address",
                  hint: "your email address",
                ),
                // PASSWORD TEXTBOX
                TextFormFieldStyled(
                  icon: const Icon(Icons.password),
                  controller: _password,
                  obscureText: true,
                  lable: "Password",
                  hint: "Enter Password",
                ),
                // LOIGN AND FORGOT PASSWORD BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryButton(
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: BUTTONFONTSIZE1,
                        ),
                      ),
                      onPress: () async {
                        Navigator.pushNamedAndRemoveUntil(context,
                            emailVerificationPageRoute, (route) => false);
                        // final email = _email.text;
                        // final password = _password.text;
                        // try {
                        //   final AuthUser user = await AuthService.firebase()
                        //       .createUser(email: email, password: password);
                        // } catch (e) {
                        //   print(e);
                        // }
                      },
                    ),
                    SecondaryButton(
                      child: "Forgot Password?",
                      onPress: () {
                        //   Navigator.pushNamedAndRemoveUntil(
                        //       context, signupPageRoute, (route) => false);
                      },
                    ),
                  ],
                ),
                SecondaryButton(
                  child: "Don't Have and Account? Sign Up",
                  onPress: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, signupPageRoute, (route) => false);
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
