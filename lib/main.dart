import 'package:finalap/routes.dart';
import 'package:finalap/screens/dynamic/email_verification.dart';
import 'package:finalap/screens/dynamic/get_details.dart';
import 'package:finalap/screens/dynamic/home_screen/home_screen.dart';
import 'package:finalap/screens/dynamic/login_screen.dart';
import 'package:finalap/screens/dynamic/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baalofy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const LoginPage(),
      routes: {
        loginPageRoute: (context) => const LoginPage(),
        signupPageRoute: (context) => const SignupPage(),
        emailVerificationPageRoute: (context) => const EmailVerification(),
        getDetailsPageRoute: (context) => const GetDetails(),
        homePageRoute: (context) => const HomePage(),
      },
    );
  }
}
