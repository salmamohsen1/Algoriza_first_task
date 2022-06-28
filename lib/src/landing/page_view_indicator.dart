import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorView extends StatelessWidget {
  final PageController controller;
  const PageIndicatorView({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      effect: const ExpandingDotsEffect(
        expansionFactor: 1.5,
        dotColor: Colors.grey,
        activeDotColor: Color(0xFFe7bc82),
        dotHeight: 7,
        dotWidth: 10,
      ),
      count: 3,
    );
  }
}
