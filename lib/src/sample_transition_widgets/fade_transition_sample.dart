import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class FadeTransitionSample extends StatelessWidget {
  const FadeTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: FadeTransition(
            opacity: _animation,
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
