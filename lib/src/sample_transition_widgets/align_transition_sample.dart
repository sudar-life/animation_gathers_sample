import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class AlignTransitionSample extends StatelessWidget {
  const AlignTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: AlignTransition(
            alignment: AlignmentTween(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).animate(controller),
            child: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 50,
                height: 50,
              ),
            ),
          ),
        );
      },
    );
  }
}
