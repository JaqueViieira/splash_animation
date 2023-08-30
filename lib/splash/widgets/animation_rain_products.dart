import 'package:flutter/material.dart';

class AnimationRainProducts extends StatelessWidget {
  final double? heightPrimary;
  final double? heightSecondary;
  final double? heightTerciario;
  final String? nameImage;
  final bool hasImage;
  final double dyOffset;

  const AnimationRainProducts({
    super.key,
    this.heightPrimary,
    this.heightSecondary,
    this.nameImage,
    this.heightTerciario,
    this.hasImage = true,
    required this.dyOffset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0.0, dyOffset),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: heightPrimary,
                width: 1.5,
                color: Colors.black,
              ),
              const SizedBox(width: 5),
              Container(
                height: heightSecondary,
                width: 1.5,
                color: Colors.black,
              ),
              const SizedBox(width: 5),
              Container(
                height: heightTerciario,
                width: 1.5,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 10),
          hasImage
              ? Image.asset(
                  nameImage.toString(),
                  height: 60,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
