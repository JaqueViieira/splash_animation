import 'package:flutter/material.dart';

class AnimationBorder extends StatelessWidget {
  final double opacity;
  final double dyOffsetImage;

  const AnimationBorder({
    super.key,
    required this.opacity,
    required this.dyOffsetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Transform.translate(
        offset: Offset(0.0, dyOffsetImage),
        child: Image.asset(
          'assets/images/detail_border.png',
          scale: 2,
        ),
      ),
    );
  }
}
