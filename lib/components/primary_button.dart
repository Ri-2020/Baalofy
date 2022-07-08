import 'package:finalap/major_constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final Widget child;
  void Function()? onPress;
  PrimaryButton({
    Key? key,
    required this.child,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          primary: LIGHT1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: DARK3,
          // onPrimary: LIGHT1,
        ),
        child: child,
      ),
    );
  }
}
