import 'package:flutter/material.dart';
import 'dart:async';

import 'package:framer/phases/phase4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Phase4Viewer extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Phase4Viewer> {
  late PageController controller;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    controller = PageController();
    // Start the timer when the widget is first built
    startTimer();
  }

  @override
  void dispose() {
    // Clean up the timer and controller when the widget is disposed
    timer.cancel();
    controller.dispose();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      // Check if the controller and its page are valid
      if (controller.hasClients) {
        final int nextPage = (controller.page!.round() + 1) % 4;
        controller.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [
              phase4("1", "2", "3"),
              phase4("4", "5", "6"),
              phase4("7", "8", "9"),
              phase4("10", "11", "12"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: WormEffect(),
          ),
        ),
      ],
    );
  }
}
