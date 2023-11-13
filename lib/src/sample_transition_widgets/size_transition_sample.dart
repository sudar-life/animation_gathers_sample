import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class SizeTransitionSample extends StatelessWidget {
  const SizeTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: Center(
            child: SizeTransition(
              sizeFactor: _animation,
              axis: Axis.horizontal,
              axisAlignment: -1,
              child: Center(
                child: Image.asset(
                  'assets/images/logo.jpg',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
