import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedOpacitySample extends StatelessWidget {
  const AnimatedOpacitySample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedOpacity(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 1000),
          opacity: state ? 1 : 0,
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
