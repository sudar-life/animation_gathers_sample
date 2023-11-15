import 'package:flutter/material.dart';

class TargetPageWithHero extends StatelessWidget {
  const TargetPageWithHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Hero(
        tag: 'HeroTransition',
        child: Text('HeroTransition'),
      ),
    );
  }
}
