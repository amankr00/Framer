import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/phase1.dart';
import 'package:framer/phases/phase2.dart';
import 'package:framer/phases/phase3.dart';
import 'package:framer/phases/phase4.dart';
import 'package:framer/phases/phase4Viewer.dart';
import 'package:framer/phases/phase5.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeMain extends StatelessWidget {
  final PageController controller = PageController(initialPage: 1);
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
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
    return GestureDetector(
      child: ScreenTypeLayout.builder(
        desktop: (BuildContext context) => completePage(context, "desktop"),
        mobile: (BuildContext context) => completePage(context, "Mobile"),
        tablet: (BuildContext context) => completePage(context, "tablet"),
      ),
    );
  }

  SingleChildScrollView completePage(BuildContext context, String type) {
    startTimer();
    double pRt = MediaQuery.of(context).size.width;
    double pLt = MediaQuery.of(context).size.width;
    if (type == "Mobile") {
      pRt = pRt * 0.02;
    } else if (type == "tablet") {
      pRt = pRt * 0.08;
      pLt = pLt * 0.02;
    } else {
      if (pRt < 1000) {
        pRt = pRt * 0.14;
        pLt = pLt * 0.4;
      } else {
        pRt = 150;
        pLt = 50;
      }
    }

    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Navbar
            navbar(),

            // Lower Body  -> 1st phase

            Phase1(pRt, pLt),

            Container(
                child: Text(
              'Trusted by some of the best in the business' + type,
              style: TextStyle(
                fontSize: 17,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
                color: Color.fromARGB(235, 101, 100, 100),
              ),
            )),

            Container(
              // width: 1400,
              height: 100,
              // color: Colors.blue,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/lowlogo.png',
                // width: 700,
                // height: 250,
                fit: BoxFit.contain,
              )),
            ),

            // Phase 2

            phase2(),

            // 3rd phase

            phase3(),

            // 4th phase
            Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                    color: Color.fromARGB(143, 243, 239, 239),
                    child: Phase4Viewer())),

            // 5th phase

            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: phase5(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Handoff ',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xfffe4d87),
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: 'that devs dream about. ',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          )),
                    ]))),
              ],
            ),
          ],
        ));

    // final controller = PageController(initialPage: 1);
  }
}
