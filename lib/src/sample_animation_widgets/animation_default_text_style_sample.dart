import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleSample extends StatelessWidget {
  const AnimatedDefaultTextStyleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          style: TextStyle(
            fontSize: state ? 20.0 : 14.0,
            color: state ? Colors.blue : Colors.red,
            fontWeight: state ? FontWeight.bold : FontWeight.normal,
            decoration:
                state ? TextDecoration.lineThrough : TextDecoration.underline,
          ),
          child: const Text('개발하는남자'),
        ),
      ),
    );
  }
}
