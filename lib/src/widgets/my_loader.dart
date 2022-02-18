import 'dart:math';
import 'package:flutter/material.dart';
import 'package:receipt_generator/src/config/theme_settings.dart';

class MyLoader extends StatefulWidget {
  const MyLoader({Key? key}) : super(key: key);

  @override
  _MyLoaderState createState() => _MyLoaderState();
}

class _MyLoaderState extends State<MyLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationRotation;

  final double initialRadius = 30;
  double radius = 30.0;

  double r1 = 16.0;
  double r2 = 14.0;
  double r3 = 12.0;
  double r4 = 10.0;
  double r5 = 8.0;
  double r6 = 6.0;
  double r7 = 4.0;
  double r8 = 2.0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _animationRotation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 1.0, curve: Curves.linear)));

    // _animationRadiusIn = Tween<double>(begin: 1.0, end: 0.0).animate(
    //     CurvedAnimation(
    //         parent: _controller,
    //         curve: const Interval(0.5, 1, curve: Curves.elasticIn)));
    //
    // _animationRadiusOut = Tween<double>(begin: 1.0, end: 0.0).animate(
    //     CurvedAnimation(
    //         parent: _controller,
    //         curve: const Interval(0.0, 0.5, curve: Curves.elasticOut)));
    //
    // _controller.addListener(() {
    //
    //   setState(() {
    //     if (_controller.value >= 0.75 && _controller.value <= 1.0) {
    //       radius = _animationRadiusIn.value * initialRadius;
    //     } else if (_controller.value >= 0.00 && _controller.value <= 0.25) {
    //       radius = _animationRadiusOut.value * initialRadius;
    //     }
    //   });
    // });

    _controller.addListener(() {
      setState(() {
        r1 = _controller.value * 2;
        r2 = _controller.value * 4;
        r3 = _controller.value * 6;
        r4 = _controller.value * 8;
        r5 = _controller.value * 10;
        r6 = _controller.value * 12;
        r7 = _controller.value * 14;
        r8 = _controller.value * 16;
      });
    });

    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: RotationTransition(
        turns: _animationRotation,
        child: Center(
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset(
                  radius * cos(0),
                  radius * sin(0),
                ),
                child: Dot(
                  radius: r1,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(2 * pi / 4),
                  radius * sin(2 * pi / 4),
                ),
                child: Dot(
                  radius: r2,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(3 * pi / 4),
                  radius * sin(3 * pi / 4),
                ),
                child: Dot(
                  radius: r3,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(4 * pi / 4),
                  radius * sin(4 * pi / 4),
                ),
                child: Dot(
                  radius: r4,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(5 * pi / 4),
                  radius * sin(5 * pi / 4),
                ),
                child: Dot(
                  radius: r5,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(6 * pi / 4),
                  radius * sin(6 * pi / 4),
                ),
                child: Dot(
                  radius: r6,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(7 * pi / 4),
                  radius * sin(7 * pi / 4),
                ),
                child: Dot(
                  radius: r7,
                ),
              ),
              Transform.translate(
                offset: Offset(
                  radius * cos(8 * pi / 4),
                  radius * sin(8 * pi / 4),
                ),
                child: Dot(
                  radius: r8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  const Dot({Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: radius,
        width: radius,
        decoration:
            const BoxDecoration(color: AppColor.color8, shape: BoxShape.circle),
      ),
    );
  }
}
