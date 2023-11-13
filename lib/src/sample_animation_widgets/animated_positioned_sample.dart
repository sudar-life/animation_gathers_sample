import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedSample extends StatelessWidget {
  const AnimatedPositionedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            right: state ? 50 : 0,
            top: state ? 50 : 0,
            child: Image.asset('assets/images/logo.jpg', width: 50, height: 50),
          ),
        ],
      ),
    );
  }
}
