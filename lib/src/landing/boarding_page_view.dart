import 'package:algoriza_first_task/src/landing/landing_item.dart';
import 'package:algoriza_first_task/src/landing/landing_model.dart';
import 'package:algoriza_first_task/src/landing/page_view_indicator.dart';
import 'package:flutter/material.dart';

class BoardingPageView extends StatelessWidget {
  BoardingPageView({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    bool isLastPage = false;
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: 3,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => LandingItem(index: index),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        PageIndicatorView(controller: _controller),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
