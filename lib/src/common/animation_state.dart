import 'package:flutter/material.dart';

class AnimationState extends StatefulWidget {
  final Widget Function(bool) builder;
  const AnimationState({super.key, required this.builder});
  @override
  State<AnimationState> createState() => _AnimationStateState();
}

class _AnimationStateState extends State<AnimationState> {
  bool state = false;
  bool isRun = true;
  @override
  void initState() {
    super.initState();
    event();
  }

  void event() async {
    await Future.doWhile(() async {
      await Future.delayed(const Duration(milliseconds: 1000));
      if (mounted) {
        setState(() {
          state = !state;
        });
      }
      return isRun;
    });
  }

  @override
  void dispose() {
    isRun = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(state);
  }
}
