// import 'package:finalap/constants.dart';
import 'package:finalap/major_constants/constants.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String child;
  final Widget? icon;
  final Widget? preicon;
  final Color? color;
  final MainAxisAlignment? mainAlignment;
  final double? padding;
  final double? width;
  final double? margin;
  final double? fontsize;
  final void Function() onPress;

  const SecondaryButton({
    Key? key,
    required this.onPress,
    required this.child,
    this.fontsize,
    this.icon,
    this.preicon,
    this.mainAlignment,
    this.padding,
    this.margin,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: margin ?? 5),
      // width: 0.9 * size.width,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          onSurface: Colors.transparent,
          elevation: 0,
          // surfaceTintColor: Colors.transparent,
          padding: EdgeInsets.all(padding ?? 10),
          // primary: Colors.transparent,
          // onPrimary: DARK1,
        ),
        child: Row(
          mainAxisAlignment: mainAlignment ?? MainAxisAlignment.center,
          children: [
            // const SizedBox(width: 10),
            Row(
              children: [
                preicon ?? const SizedBox(),
                const SizedBox(width: 10),
                SizedBox(
                  width: width,
                  child: Text(
                    child,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: color ?? DARK2,
                      fontSize: fontsize ?? 14,
                    ),
                  ),
                ),
              ],
            ),
            icon ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
