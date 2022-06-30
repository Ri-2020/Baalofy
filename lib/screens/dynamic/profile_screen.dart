// import 'dart:html';

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
    return Background(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            right: 30,
            left: 30,
            top: 70,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "Your Profile",
                    style: TextStyle(
                      color: DARK2,
                      fontSize: HEADINGFONTSIZE2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                // margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: LIGHT2,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      spreadRadius: -10.0,
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 25,
                            spreadRadius: -15.0,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset("assets/images/indian.png"),
                        ),
                      ),
                    ),
                    RichText(
                      // overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                        text: "Samriddhi Singh",
                        style: TextStyle(
                          color: DARK2,
                          // overflow: TextOverflow.fade,
                          fontWeight: FontWeight.bold,
                          fontSize: HEADINGFONTSIZE3,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: LIGHT2,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      spreadRadius: -10.0,
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                ),
                child: Row(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
