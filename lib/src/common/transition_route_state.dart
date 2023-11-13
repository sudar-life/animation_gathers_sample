import 'package:flutter/material.dart';

class TransitionRouteState extends PageRouteBuilder {
  final Widget page;
  final Widget Function(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) transition;
  final Duration? duration;
  TransitionRouteState({
    required this.page,
    required this.transition,
    this.duration,
  }) : super(
            pageBuilder: (
              BuildContext _,
              Animation<double> __,
              Animation<double> ___,
            ) =>
                page,
            transitionsBuilder: transition,
            transitionDuration: duration ?? const Duration(seconds: 2));
}
