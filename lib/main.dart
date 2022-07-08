//dart and flutter imports
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// screen and constant imports
import 'package:finalap/app.dart';
import 'package:finalap/major_constants/routes.dart';
import 'package:finalap/screens/dynamic/email_verification_screen.dart';
import 'package:finalap/screens/dynamic/get_details_screen.dart';
import 'package:finalap/screens/dynamic/home_screen/home_screen.dart';
import 'package:finalap/screens/dynamic/login_screen.dart';
import 'package:finalap/screens/dynamic/profile_screen.dart';
import 'package:finalap/screens/dynamic/signup_screen.dart';

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
        appRoute: (context) => const App(),
        homePageRoute: (context) => const HomePage(),
        profileRoute: (context) => const ProfilePage(),
      },
    );
  }
}
