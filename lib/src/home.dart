import 'package:animation_gathering/src/page/all_curved_widget.dart';
import 'package:animation_gathering/src/page/default_animation_widget_gather.dart';
import 'package:animation_gathering/src/page/transition_route_widget.dart';
import 'package:animation_gathering/src/page/transition_widget_gather.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const DefaultAnimationWidgetGather();
                  },
                ));
              },
              child: const Text('기본 애니메이션 위젯 모음'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TransitionWidgetGather();
                  },
                ));
              },
              child: const Text('트렌지션 위젯 모음'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const AllCurvedWidget();
                  },
                ));
              },
              child: const Text('애니메이션 Curve의 모든것'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TransitionRouteWidget();
                  },
                ));
              },
              child: const Text('트렌지션 route 예제'),
            )
          ],
        ),
      ),
    );
  }
}
