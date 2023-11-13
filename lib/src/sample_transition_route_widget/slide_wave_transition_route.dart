import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget slideWaveTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      return ClipPath(
        clipper: WavePainter(animation.value),
        child: child,
      );
    },
  );
}

class WavePainter extends CustomClipper<Path> {
  final double waveProgress;

  WavePainter(this.waveProgress);

  @override
  Path getClip(Size size) {
    var path = Path();

    // 웨이브 효과를 만드는 경로 생성
    path.moveTo(0, size.height);
    for (double i = 0.0; i < size.width; i++) {
      var y = sin((i / size.width * 2 * pi) + (waveProgress * 2 * pi)) * 20;
      path.lineTo(i, size.height - 50 - y);
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WavePainter oldClipper) =>
      oldClipper.waveProgress != waveProgress;
}
