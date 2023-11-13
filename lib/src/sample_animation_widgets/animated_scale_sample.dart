import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedScaleSample extends StatelessWidget {
  const AnimatedScaleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedScale(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 1000),
          scale: state ? 1 : 0.5,
          child: Image.asset(
            'assets/images/logo.jpg',
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
