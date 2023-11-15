import 'package:flutter/material.dart';

Widget zipperPullTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  var _animation = Tween<double>(begin: 0.0, end: 1.0)
      .chain(CurveTween(curve: Curves.easeIn))
      .animate(animation);
  return Stack(
    fit: StackFit.expand,
    children: [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        child: ClipPath(
          clipper: SampleClipper(
            value: _animation.value,
          ),
          child: child,
        ),
      ),
    ],
  );
}

class SampleClipper extends CustomClipper<Path> {
  final double value;

  SampleClipper({required this.value});

  @override
  Path getClip(Size size) {
    var yPosition = size.height * (value - 0.5) * 2;
    var path = Path();
    path.moveTo(0, 0);
    path.conicTo(
        size.width * 0.5, 0, size.width * 0.5, size.height - yPosition, 0.5);
    path.conicTo(size.width * 0.5, 0, size.width, 0, 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(SampleClipper oldClipper) => oldClipper.value != value;
}
