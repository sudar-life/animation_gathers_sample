import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class ScaleTransitionSample extends StatelessWidget {
  const ScaleTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: ScaleTransition(
            scale: _animation,
            child: Container(
              width: 200,
              height: 200,
              child: Center(
                  child: Image.asset(
                'assets/images/logo.jpg',
                width: 50,
                height: 50,
              )),
            ),
          ),
        );
      },
    );
  }
}
