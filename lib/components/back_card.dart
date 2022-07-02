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
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: LIGHT2,
      ),
      child: child,
    );
  }
}
