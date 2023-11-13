import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedAlignSample extends StatelessWidget {
  const AnimatedAlignSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedAlign(
          alignment: state ? Alignment.bottomRight : Alignment.topLeft,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 1000),
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
