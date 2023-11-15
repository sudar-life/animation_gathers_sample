import 'package:animation_gathering/src/components/default_animation_gather_view.dart';
import 'package:animation_gathering/src/sample_transition_widgets/align_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/animated_icon_transiton_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/decorated_box_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/fade_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/positioned_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/relative_positioned_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/scale_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/size_transition_sample.dart';
import 'package:animation_gathering/src/sample_transition_widgets/slide_transition_sample.dart';
import 'package:flutter/material.dart';

class TransitionWidgetGather extends StatelessWidget {
  const TransitionWidgetGather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transition Widget 종류'),
      ),
      backgroundColor: Colors.grey[300],
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: const [
          DefaultAnimationGatherView(
            title: 'FadeTransition',
            animatedWidget: FadeTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'ScaleTransition',
            animatedWidget: ScaleTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'SizeTransition',
            animatedWidget: SizeTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'SlideTransition',
            animatedWidget: SlideTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'RotationTransition',
            animatedWidget: RotationTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'DecoratedBoxTransition',
            animatedWidget: DecoratedBoxTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AlignTransition',
            animatedWidget: AlignTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'RelativePositionedTransition',
            animatedWidget: RelativePositionedTransitionSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedIconSample',
            animatedWidget: AnimatedIconSample(),
          ),
        ],
      ),
    );
  }
}
