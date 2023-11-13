import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class RotationTransitionSample extends StatelessWidget {
  const RotationTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: Stack(
            children: <Widget>[
              RotationTransition(
                turns: _animation,
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
