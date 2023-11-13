import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class SlideTransitionSample extends StatelessWidget {
  const SlideTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0), // Start from left
              end: const Offset(0.0, 0.0), // End at center
            ).chain(CurveTween(curve: Curves.bounceIn)).animate(controller),
            child: Center(
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
