// flutter and dart imports
import 'package:flutter/material.dart';

// screens and classes imports
import 'package:finalap/components/back_card.dart';
import 'package:finalap/components/secondary_button.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:finalap/screens/static/background.dart';

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
        child: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 20,
        ),
        child: Column(
          children: [
            BackCard(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                spreadRadius: -4)
                          ]),
                      child: CircleAvatar(
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
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 0.7 * width,
                      child: const Text(
                        "Bhavyaa Gupta",
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: DARK2,
                          fontWeight: MEDIUM,
                          fontSize: FONTSIZE1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BackCard(
              child: Container(
                padding: const EdgeInsets.all(
                  17,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //edit profile button
                    SecondaryButton(
                      child: "Edit Profile",
                      onPress: () {},
                      fontsize: BUTTONFONTSIZE1,
                      icon: const Icon(
                        Icons.edit,
                        color: DARK2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // account balance button
                    SecondaryButton(
                      child: "Account Balance",
                      onPress: () {},
                      fontsize: BUTTONFONTSIZE1,
                      icon: Row(
                        children: [
                          const Icon(
                            Icons.currency_rupee,
                            color: DARK2,
                          ),
                          Text(
                            "197.20",
                            style: TextStyle(color: DARK3, fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SecondaryButton(
                      child: "Your Visits",
                      onPress: () {},
                      fontsize: BUTTONFONTSIZE1,
                      icon: const Icon(
                        Icons.menu_book,
                        color: DARK2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SecondaryButton(
                      child: "Settings",
                      onPress: () {},
                      fontsize: BUTTONFONTSIZE1,
                      icon: const Icon(
                        Icons.settings,
                        color: DARK2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SecondaryButton(
                      child: "Logout",
                      onPress: () {},
                      fontsize: BUTTONFONTSIZE1,
                      // color: Colors.red,
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
