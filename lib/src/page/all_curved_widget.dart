import 'package:flutter/material.dart';

class AllCurvedWidget extends StatefulWidget {
  const AllCurvedWidget({super.key});

  @override
  State<AllCurvedWidget> createState() => _AllCurvedWidgetState();
}

class _AllCurvedWidgetState extends State<AllCurvedWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<AlignmentGeometry> _animation;
  late Tween<AlignmentGeometry> tween;
  late (Curve, String, String) activityCurve;

  List<(Curve, String, String)> curves = [
    (Curves.linear, 'linear', '일정한 속도로 진행되는 애니메이션입니다.'),
    (Curves.decelerate, 'decelerate', '점점 느려지는 애니메이션입니다'),
    (Curves.ease, 'ease', '시작과 끝에서 느려지고 중간에는 빨라지는 애니메이션입니다'),
    (Curves.easeIn, 'easeIn', '시작 부분에서 천천히 시작하여 점점 속도가 빨라지는 애니메이션입니다'),
    (Curves.easeOut, 'easeOut', '빠르게 시작하여 점점 느려지는 애니메이션입니다'),
    (Curves.easeInOut, 'easeInOut', '시작과 끝에서 천천히, 중간에는 빠르게 진행되는 애니메이션입니다'),
    (Curves.fastOutSlowIn, 'fastOutSlowIn', '빠르게 시작하여 천천히 끝나는 애니메이션입니다'),
    (Curves.bounceIn, 'bounceIn', '끝에서 튕기듯이 멈추는 애니메이션입니다'),
    (Curves.bounceOut, 'bounceOut', '시작할 때 튕기듯이 시작하는 애니메이션입니다'),
    (Curves.bounceInOut, 'bounceInOut', '시작과 끝에서 튕기듯이 진행되는 애니메이션입니다'),
    (Curves.elasticIn, 'elasticIn', '탄성을 가진 듯 시작 부분에서 진행되는 애니메이션입니다'),
    (Curves.elasticOut, 'elasticOut', '탄성을 가진 듯 끝 부분에서 진행되는 애니메이션입니다'),
    (Curves.elasticInOut, 'elasticInOut', '탄성을 가진 듯 시작과 끝에서 진행되는 애니메이션입니다'),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    tween = AlignmentTween(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
    _animation = tween.animate(_controller);
    _controller.repeat();
    activityCurve = curves.first;
  }

  changeCurve() {
    setState(() {
      _animation =
          tween.chain(CurveTween(curve: activityCurve.$1)).animate(_controller);
      _controller.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Curved 종류'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                color: Colors.grey[300],
                width: 300,
                height: 300,
                child: AlignTransition(
                  alignment: _animation,
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  activityCurve.$3,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  curves.length,
                  (index) => GestureDetector(
                    onTap: () {
                      activityCurve = curves[index];
                      changeCurve();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: activityCurve == curves[index]
                            ? Colors.purple[300]
                            : Colors.purple[100],
                      ),
                      child: Center(
                        child: Text(
                          curves[index].$2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
