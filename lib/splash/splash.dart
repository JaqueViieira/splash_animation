import 'package:flutter/material.dart';
import 'package:splash_animation/splash/widgets/animation_border.dart';

import 'widgets/animation_card.dart';
import 'widgets/widget_animation_primary.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationControllerCart;
  late AnimationController _animationControllerBorder;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animationController.forward();

    Future.delayed(
      const Duration(milliseconds: 3800),
      () {
        _animationController.stop();
      },
    );

    _animationControllerCart = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    Future.delayed(
      const Duration(seconds: 2),
      () {
        _animationControllerCart.forward();
      },
    );

    _animationControllerBorder = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    Future.delayed(
      const Duration(seconds: 2),
      () {
        _animationControllerBorder.forward();
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationControllerCart.dispose();
    _animationControllerBorder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, widget) {
              return WidgetAnimationPrimary(
                dyValueColumn: _animationController.value * 500,
                dyContainerOne: _animationController.value * 500,
                dyValueImageBag: _animationController.value * 250,
                dyValueImageDress: _animationController.value * 450,
                dyContainerTwo: _animationController.value * 250,
                dyContainerThree: _animationController.value * 450,
                dyValueImageHandbag: _animationController.value * 250,
                dyValueImageShoes: _animationController.value * 450,
                dyValueImageShirt: _animationController.value * 250,
                dyValueImageHanger: _animationController.value * 450,
                dyContainerFour: _animationController.value * 450,
                dyContainerFive: _animationController.value * 250,
              );
            },
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedBuilder(
                animation: _animationControllerBorder,
                builder: (context, child) {
                  return AnimationBorder(
                    opacity: _animationControllerCart.value,
                    dyOffsetImage: _animationControllerCart.value * -360,
                  );
                },
              ),
              AnimatedBuilder(
                animation: _animationControllerCart,
                builder: (context, child) {
                  final textAnimation = CurvedAnimation(
                    parent: _animationControllerCart,
                    curve: const Interval(0.9, 1.0),
                  );
                  return AnimationCard(
                    offset: Offset(0.0, _animationControllerCart.value * -300),
                    opacity: _animationControllerCart.value,
                    opacityText: textAnimation.value,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
