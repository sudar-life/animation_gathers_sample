import 'package:animation_gathering/src/common/transition_state.dart';
import 'package:flutter/material.dart';

class AnimatedIconSample extends StatelessWidget {
  const AnimatedIconSample({super.key});

  @override
  Widget build(BuildContext context) {
    return TransitionState(
      builder: (AnimationController controller, Animation<double> _animation) {
        return Center(
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: _animation,
            size: 72.0,
            semanticLabel: 'Show menu',
          ),
        );
      },
    );
  }
}
