import 'package:finalap/components/primary_button.dart';
import 'package:finalap/components/secondary_button.dart';
import 'package:finalap/components/text_form_field.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/major_constants/routes.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SizedBox(
        // margin: EdgeInsets.only(top: 0.2 * size.width),
        width: 0.8 * size.width,
        child: Form(
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
                "Sign Up!",
                style: TextStyle(
                  fontSize: HEADINGFONTSIZE1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldStyled(
                icon: const Icon(Icons.email),
                hint: "abcdef@email.xyz",
                controller: _email,
                lable: "Email Address",
              ),
              TextFormFieldStyled(
                icon: const Icon(Icons.password),
                hint: "Password",
                controller: _password,
                lable: "Password",
              ),
              PrimaryButton(
                child: const Text("Sign up"),
                onPress: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    getDetailsPageRoute,
                    (route) => false,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SecondaryButton(
                        child: "Already Have an Account? Sign In",
                        onPress: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, loginPageRoute, (route) => false);
                        },
                      ),
                      const Text("or"),
                      const SizedBox(
                        height: 20,
                      ),
                      SignInButton(
                        Buttons.GoogleDark,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
