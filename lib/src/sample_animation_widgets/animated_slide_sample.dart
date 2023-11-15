import 'dart:math';

import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedSlideSample extends StatelessWidget {
  const AnimatedSlideSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(builder: (state) {
      var r = Random().nextInt(10);
      var y = Random().nextInt(10);
      var t = Random().nextInt(10);
      var g = Random().nextInt(10);
      var sx = r < 5 ? -1.0 : 1.0;
      var tx = t < 5 ? -1.0 : .5;
      var sy = y < 5 ? -1.0 : 1.0;
      var ty = g < 5 ? -.5 : 1.0;
      return Center(
        child: AnimatedSlide(
          offset: state ? Offset(sx, sy) : Offset(tx, ty),
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 1000),
          child: Image.asset(
            'assets/images/logo.jpg',
            width: 50,
            height: 50,
          ),
        ),
      );
    });
  }
}
