import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class RelativePositionedTransitionSample extends StatelessWidget {
  const RelativePositionedTransitionSample({super.key});

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
              RelativePositionedTransition(
                rect: RectTween(
                  begin: const Rect.fromLTWH(-50, -50, 100, 100),
                  end: const Rect.fromLTWH(-50, -50, 50, 50),
                ).animate(controller),
                size: Size(0, 0),
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
