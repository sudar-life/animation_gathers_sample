import 'package:animation_gathering/src/common/animation_state.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeSample extends StatelessWidget {
  const AnimatedCrossFadeSample({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationState(
      builder: (state) => Center(
        child: AnimatedCrossFade(
          duration: const Duration(milliseconds: 1000),
          crossFadeState:
              state ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          firstChild: const Icon(Icons.add_chart, size: 50),
          secondChild:
              const Icon(Icons.account_balance_wallet_rounded, size: 50),
        ),
      ),
    );
  }
}
