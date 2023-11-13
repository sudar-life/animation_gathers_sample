import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class DecoratedBoxTransitionSample extends StatelessWidget {
  const DecoratedBoxTransitionSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        var _decorationAnimation = DecorationTween(
          begin: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.zero,
          ),
          end: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
        ).animate(controller);
        return GestureDetector(
          onTap: () {
            controller.repeat();
          },
          child: Stack(
            children: <Widget>[
              DecoratedBoxTransition(
                decoration: _decorationAnimation,
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
