import 'package:finalap/components/primary_button.dart';
import 'package:finalap/components/secondary_button.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/major_constants/routes.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:flutter/cupertino.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.1 * size.width),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Please! Verify Your Email Address",
              style: TextStyle(
                fontSize: HEADINGFONTSIZE1,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "We have sent you a verification link on your email address.",
              style: TextStyle(
                fontSize: BUTTONFONTSIZE1,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            PrimaryButton(
              child: const Text("Email Verified!"),
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  getDetailsPageRoute,
                  (route) => false,
                );
              },
            ),
            SecondaryButton(
              child: "Change Email Address",
              onPress: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  loginPageRoute,
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
