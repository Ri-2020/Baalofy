import 'package:finalap/major_constants/constants.dart';
import 'package:flutter/material.dart';

class BackCard extends StatelessWidget {
  final Widget child;
  const BackCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final width = size.width;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      padding: const EdgeInsets.all(10),
      width: 0.9 * width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: LIGHT1,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5,
              spreadRadius: -5,
            )
          ]),
      child: child,
    );
  }
}
