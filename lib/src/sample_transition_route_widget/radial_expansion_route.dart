import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget radialExpansionRoute(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      final radius = Tween(begin: 0.0, end: 1.0)
          .chain(CurveTween(curve: Curves.bounceIn))
          .animate(animation)
          .value;
      return ClipPath(
        clipper: CircleRevealClipper(
          radius: radius,
          centerAlignment: Alignment.bottomLeft,
        ),
        child: child,
      );
    },
    child: child,
  );
}

class CircleRevealClipper extends CustomClipper<Path> {
  final double radius;
  final Alignment centerAlignment;

  CircleRevealClipper({required this.radius, required this.centerAlignment});

  @override
  Path getClip(Size size) {
    final center = centerAlignment.alongSize(size);
    return Path()
      ..addOval(Rect.fromCircle(
          center: center,
          radius: radius *
              math.sqrt(size.width * size.width + size.height * size.height)));
  }

  @override
  bool shouldReclip(CircleRevealClipper oldClipper) =>
      oldClipper.radius != radius;
}
