import 'package:flutter/material.dart';

import 'animation_rain_products.dart';

class WidgetAnimationPrimary extends StatelessWidget {
  final double dyValueColumn;
  final double dyContainerOne;
  final double dyContainerTwo;
  final double dyContainerThree;
  final double dyContainerFour;
  final double dyContainerFive;
  final double dyValueImageBag;
  final double dyValueImageDress;
  final double dyValueImageHandbag;
  final double dyValueImageShoes;
  final double dyValueImageShirt;
  final double dyValueImageHanger;

  const WidgetAnimationPrimary({
    super.key,
    required this.dyValueColumn,
    required this.dyContainerOne,
    required this.dyValueImageBag,
    required this.dyValueImageDress,
    required this.dyContainerTwo,
    required this.dyContainerThree,
    required this.dyValueImageHandbag,
    required this.dyValueImageShoes,
    required this.dyValueImageShirt,
    required this.dyValueImageHanger,
    required this.dyContainerFour,
    required this.dyContainerFive,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Transform.translate(
        offset: Offset(0.0, dyValueColumn),
        child: Column(
          children: [
            AnimationRainProducts(
              dyOffset: dyContainerOne,
              hasImage: false,
              heightSecondary: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimationRainProducts(
                  dyOffset: dyValueImageBag,
                  heightPrimary: 30,
                  heightSecondary: 60,
                  heightTerciario: 35,
                  nameImage: 'assets/images/bag.png',
                ),
                AnimationRainProducts(
                  dyOffset: dyValueImageDress,
                  heightPrimary: 20,
                  heightSecondary: 40,
                  heightTerciario: 50,
                  nameImage: 'assets/images/dress.png',
                ),
                AnimationRainProducts(
                  dyOffset: dyContainerTwo,
                  hasImage: false,
                  heightTerciario: 60,
                ),
                AnimationRainProducts(
                  dyOffset: dyContainerThree,
                  hasImage: false,
                  heightTerciario: 60,
                ),
                AnimationRainProducts(
                  dyOffset: dyValueImageShirt,
                  heightPrimary: 25,
                  heightSecondary: 60,
                  heightTerciario: 25,
                  nameImage: 'assets/images/shirt.png',
                ),
                AnimationRainProducts(
                  dyOffset: dyValueImageHandbag,
                  heightSecondary: 60,
                  nameImage: 'assets/images/handbag.png',
                ),
                AnimationRainProducts(
                  dyOffset: dyContainerFour,
                  hasImage: false,
                  heightSecondary: 60,
                  heightPrimary: 30,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimationRainProducts(
                  dyOffset: dyContainerFive,
                  hasImage: false,
                  heightSecondary: 80,
                  heightPrimary: 50,
                ),
                AnimationRainProducts(
                  dyOffset: dyValueImageShoes,
                  heightPrimary: 80,
                  nameImage: 'assets/images/shoe.png',
                ),
                AnimationRainProducts(
                  dyOffset: dyValueImageHanger,
                  heightPrimary: 35,
                  heightSecondary: 65,
                  nameImage: 'assets/images/hanger.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
