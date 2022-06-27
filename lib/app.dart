import 'package:finalap/constants.dart';
import 'package:finalap/screens/dynamic/home_screen/home_screen.dart';
import 'package:finalap/screens/dynamic/login_screen.dart';
import 'package:finalap/screens/dynamic/profile_screen.dart';
import 'package:finalap/screens/dynamic/signup_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Widget> _screens = const [
    HomePage(),
    ProfilePage(),
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: LIGHT3,
          selectedItemColor: DARK1,
          unselectedItemColor: DARK3,
          showUnselectedLabels: false,
          iconSize: 35,
          elevation: 300,
          currentIndex: currentindex,
          onTap: (index) => setState(() {
                currentindex = index;
              }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              // backgroundColor: Colors.orange,s
            )
          ]),
    );
  }
}
