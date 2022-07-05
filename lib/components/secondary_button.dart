// import 'package:finalap/constants.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String child;
  final Widget? icon;
  final Color? color;
  final double? fontsize;
  final void Function() onPress;

  const SecondaryButton({
    Key? key,
    required this.child,
    this.fontsize,
    this.icon,
    this.color,
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
          // surfaceTintColor: Colors.transparent,
          padding: const EdgeInsets.all(10),
          // primary: Colors.transparent,
          // onPrimary: DARK1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              child,
              style: TextStyle(
                color: color ?? DARK2,
                fontSize: fontsize ?? 14,
              ),
            ),
            icon ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
