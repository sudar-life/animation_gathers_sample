import 'package:flutter/material.dart';

Widget fadeInTransitionRoute(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  var curvedAnimation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeIn,
  );
  return FadeTransition(
    opacity: curvedAnimation,
    child: child,
  );
}
