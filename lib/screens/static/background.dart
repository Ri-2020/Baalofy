import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class Background extends StatefulWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Positioned(
                top: 0.0,
                left: -60.0,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    "assets/images/top.png",
                    width: 0.4 * size.width,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: -50.0,
                child: Opacity(
                  opacity: 0.1,
                  child: Image.asset(
                    "assets/images/bottom.png",
                    width: 0.3 * size.width,
                  ),
                ),
              ),
              widget.child,
            ],
          ),
        ),
      ),
    );
  }
}
