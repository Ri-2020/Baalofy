import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  final int? count;
  const Stars({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = const Color.fromARGB(255, 198, 182, 34);
    if (count == 5 || count == 4) {
      color = const Color.fromARGB(255, 86, 167, 20);
    } else if (count == 3) {
      color = const Color.fromARGB(255, 198, 179, 34);
    } else if (count == 2) {
      color = const Color.fromARGB(255, 198, 132, 34);
    } else {
      color = Colors.red;
    }
    Icon star = Icon(
      CupertinoIcons.star_fill,
      size: 17.0,
      color: color,
    );
    dynamic stars = <Icon>[];
    for (var i = 0; i < count! && i < 5; i++) {
      stars.add(star);
    }
    return SizedBox(
      // margin: const EdgeInsets.only(
      //   top: 2.0,
      // ),
      child: Row(
        children: stars,
      ),
    );
  }
}
