import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimationCard extends StatelessWidget {
  final Offset offset;
  final double opacity;
  final double opacityText;

  const AnimationCard({
    super.key,
    required this.offset,
    required this.opacity,
    required this.opacityText,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Opacity(
        opacity: opacity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/cart.png',
              height: 150,
            ),
            Opacity(
              opacity: opacityText,
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'GeVendas',
                    speed: const Duration(milliseconds: 90),
                    textStyle: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      color: Colors.amber,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.9),
                          offset: const Offset(2, 7),
                          blurRadius: 9,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
