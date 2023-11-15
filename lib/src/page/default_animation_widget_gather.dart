import 'package:animation_gathering/src/components/default_animation_gather_view.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_opacity_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_physical_model_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_positioned_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_rotation_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_scale_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_slide_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animated_switcher_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animation_align_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animation_container_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animation_cross_fade_sample.dart';
import 'package:animation_gathering/src/sample_animation_widgets/animation_default_text_style_sample.dart';
import 'package:flutter/material.dart';

class DefaultAnimationWidgetGather extends StatelessWidget {
  const DefaultAnimationWidgetGather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Widget 종류'),
      ),
      backgroundColor: Colors.grey[300],
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: const [
          DefaultAnimationGatherView(
            title: 'AnimationContainer',
            animatedWidget: AnimationContainerSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedCrossFade',
            animatedWidget: AnimatedCrossFadeSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedDefaultTextStyle',
            animatedWidget: AnimatedDefaultTextStyleSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedAlign',
            animatedWidget: AnimatedAlignSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedScale',
            animatedWidget: AnimatedScaleSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedRotation',
            animatedWidget: AnimatedRotationSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedOpacity',
            animatedWidget: AnimatedOpacitySample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedPhysicalModel',
            animatedWidget: AnimatedPhysicalModelSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedPositioned',
            animatedWidget: AnimatedPositionedSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedSwitcher',
            animatedWidget: AnimatedSwitcherSample(),
          ),
          DefaultAnimationGatherView(
            title: 'AnimatedSlide',
            animatedWidget: AnimatedSlideSample(),
          ),
        ],
      ),
    );
  }
}
