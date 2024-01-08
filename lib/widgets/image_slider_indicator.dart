import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageSliderIndicator extends StatelessWidget {
  const ImageSliderIndicator({
    super.key,
    required this.carouselImages,
    required int currentIndex,
  }) : _currentIndex = currentIndex;

  final List<String> carouselImages;
  final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: carouselImages.length,
      position: _currentIndex,
      decorator: DotsDecorator(
        color: const Color.fromRGBO(143, 39, 143, 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Colors.purple,
            width: 1,
          ),
        ),
        activeShape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color.fromRGBO(143, 39, 143, 1),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
