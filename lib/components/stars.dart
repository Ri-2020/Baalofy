import 'package:flutter/cupertino.dart';

class Stars extends StatelessWidget {
  final int? count;
  const Stars({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Icon star = const Icon(
      CupertinoIcons.star_fill,
      size: 17.0,
      color: Color.fromARGB(255, 198, 182, 34),
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
