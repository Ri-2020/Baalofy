// import 'dart:html';

import 'package:finalap/components/back_card.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/screens/static/background.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: unused_local_variable
    double width = size.width;
    return Background(
        child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: Column(
        children: [
          BackCard(
              child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  child: Image.asset(
                    'assets/images/indian.png',
                  ),
                ),
              ),
              Container(),
            ],
          ))
        ],
      ),
    ));
  }
}
