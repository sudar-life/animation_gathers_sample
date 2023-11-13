import 'package:flutter/material.dart';

class TransitionState extends StatefulWidget {
  final Widget Function(AnimationController, Animation<double>) builder;
  const TransitionState({super.key, required this.builder});

  @override
  State<TransitionState> createState() => _TransitionStateState();
}

class _TransitionStateState extends State<TransitionState>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(_controller, _animation);
  }
}
