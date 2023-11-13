import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedPhysicalModelSample extends StatelessWidget {
  const AnimatedPhysicalModelSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedPhysicalModel(
          duration: Duration(seconds: 1),
          elevation: state ? 10.0 : 0.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          borderRadius: state ? BorderRadius.circular(20) : BorderRadius.zero,
          child: Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
