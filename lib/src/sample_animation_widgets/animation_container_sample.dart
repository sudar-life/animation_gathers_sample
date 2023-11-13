import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimationContainerSample extends StatelessWidget {
  const AnimationContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: state ? size.width * 0.1 : size.width * 0.3,
          height: state ? size.width * 0.1 : size.width * 0.3,
          decoration: BoxDecoration(
            color: state ? Colors.red : Colors.blue,
            borderRadius: BorderRadius.circular(state ? 8 : 0),
          ),
        ),
      ),
    );
  }
}
