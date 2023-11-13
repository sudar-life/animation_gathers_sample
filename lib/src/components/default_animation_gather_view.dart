import 'package:flutter/material.dart';

class DefaultAnimationGatherView extends StatefulWidget {
  final String title;
  final Widget animatedWidget;
  const DefaultAnimationGatherView({
    super.key,
    required this.title,
    required this.animatedWidget,
  });

  @override
  State<DefaultAnimationGatherView> createState() =>
      _DefaultAnimationGatherViewState();
}

class _DefaultAnimationGatherViewState
    extends State<DefaultAnimationGatherView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Center(
            child: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ),
          Expanded(child: widget.animatedWidget),
        ],
      ),
    );
  }
}
