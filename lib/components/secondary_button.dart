// import 'package:finalap/constants.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String child;
  final void Function() onPress;

  const SecondaryButton({
    Key? key,
    required this.child,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      // width: 0.9 * size.width,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          onSurface: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.all(10),
          // primary: Colors.transparent,
          // onPrimary: DARK1,
        ),
        child: Text(child,
            style: const TextStyle(
              color: Colors.black,
            )),
      ),
    );
  }
}
