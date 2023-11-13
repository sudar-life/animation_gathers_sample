import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherSample extends StatelessWidget {
  const AnimatedSwitcherSample({super.key});

  @override
  Widget build(BuildContext context) {
    var _count = 0;
    return AnimationState(builder: (state) {
      if (_count > 100) {
        _count = 0;
      }
      _count++;
      return Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              child: child,
              opacity: animation,
            );
          },
          child: Text(
            '$_count',
            // Key is important here because it tells the framework to perform a rebuild when the value changes
            key: ValueKey<int>(_count),
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      );
    });
  }
}
