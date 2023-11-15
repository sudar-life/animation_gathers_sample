import 'package:flutter/material.dart';

Widget heroTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}
