import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(fit: BoxFit.cover,
                "Assets/images/top1.png",
                width: size.width
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(fit: BoxFit.cover,
                "Assets/images/top2.png",
                width: size.width
            ),
          ),
          Positioned(
            top: -50.0,
            right: 40,
            child: Container(
              height: 300,
              child: CircleAvatar(
                radius:50,
                child: Image.asset(
                    fit: BoxFit.fill,
                    "Assets/images/zee.png",

                    width: size.width * 0.35
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(fit: BoxFit.cover,
                "Assets/images/bottom1.png",
                width: size.width
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(fit: BoxFit.cover,
                "Assets/images/bottom2.png",
                width: size.width
            ),
          ),
          child
        ],
      ),
    );
  }
}