import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget moveMiddleToCircleTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child) {
  var positionAnimation = Tween<Offset>(
    begin: const Offset(0.0, 0.5),
    end: const Offset(0.0, 0.0),
  ).animate(CurvedAnimation(
    parent: animation,
    curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
  ));

  var sizeAnimation = Tween<double>(begin: 0.5, end: 1).animate(
    CurvedAnimation(
      parent: animation,
      curve: const Interval(0.5, 1.0, curve: Curves.easeOut),
    ),
  );
  return FractionalTranslation(
    translation: positionAnimation.value,
    child: ClipPath(
      clipper: CircleRevealClipper(
        radius: sizeAnimation.value,
      ),
      child: child,
    ),
  );
}

class CircleRevealClipper extends CustomClipper<Path> {
  final double radius;

  CircleRevealClipper({required this.radius});

  @override
  Path getClip(Size size) {
    final center = Alignment.center.alongSize(size);
    if (radius == 0.5) {
      return Path()
        ..addOval(Rect.fromCircle(center: center, radius: radius * 100));
    }
    return Path()
      ..addOval(Rect.fromCircle(
          center: center,
          radius: (radius - 0.5) *
              math.sqrt(size.width * size.width + size.height * size.height)));
  }

  @override
  bool shouldReclip(CircleRevealClipper oldClipper) =>
      oldClipper.radius != radius;
}
