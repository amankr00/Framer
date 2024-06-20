import 'dart:async';
import 'package:framer/phases/anime3.dart';
import 'package:framer/phases/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime.dart';
import 'package:framer/phases/hover.dart';
import 'package:framer/phases/paraPassing.dart';
import 'package:framer/phases/testAnimate.dart';
import 'package:lottie/lottie.dart';
import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/phase1.dart';
import 'package:framer/phases/phase2.dart';
import 'package:framer/phases/phase3.dart';
import 'package:framer/phases/phase4.dart';
import 'package:framer/phases/phase4Viewer.dart';
import 'package:framer/phases/phase5.dart';
import 'package:framer/phases/phase6.dart';
import 'package:framer/phases/phase7.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:gif_view/gif_view.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
    // void pr(int prt)
    // {
    // print(prt);
    // }
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
        child: Stack(
          children :[ 
          Anime3(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Button(),
              // zero(),
              // AnimatedTextExample(),
              // para(initialText: 'Hello, Starkiee!'),
          
              
              // Navbar
              navbar(),
          
              // Text('data')
              // .animate()
              // .fade(duration: 1500.ms)
              // .slideX(begin: -5,end: 0),
          
              // Lower Body  -> 1st phase
          
              Phase1(pRt, pLt),

              SizedBox(
              height: 20,),
          
              Container(
                  child: Text(
                'Trusted by some of the best in the business', //$pRt'
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(235, 101, 100, 100),
                ),
              )).animate().fade(delay: 100.ms).slideY(begin: -100, end: 0),
              // .shake(),
          
              SizedBox(
                height: 50,
              ),
          
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconItem('IRIS APP', 'assets/images/iris.png'),
                IconItem('TaskFlow App', 'assets/images/taskflow.png'),
                IconItem('Samadhan App', 'assets/images/samadhan.png'),
                IconItem('Maa App', 'assets/images/maa.png'),
                IconItem('Samaksh', 'assets/images/samaksh.png'),
                IconItem('Home Insights', 'assets/images/home.png'),
                IconItem('Shravani', 'assets/images/shravani.png'),
                IconItem('Prathmikta', 'assets/images/prathmikta.png'),
                IconItem('DakPad', 'assets/images/da.png'),
              ]),
              // App()
              // .animate()
              //       .fade(delay: 100.ms)
              //       .slideY(begin: 1,end: 0),
          
              SizedBox(
                height: 70,
              ),
          
              // Phase 2
          
              phase2(),
          
              // 3rd phase
          
              phase3(),
          
              // 4th phase
              Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Container(
                      height: 450,
                      color: Color.fromRGBO(243, 239, 239, 0.561),
                      child: Phase4Viewer())),
          
              // 5th phase
          
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: phase5(),
              ),
          
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 100),
                child: phase6(),
              ),
          
              phase7(),
            ],
          ),
          
          ]
        ));

    // final controller = PageController(initialPage: 1);
  }
}

class IconItem extends StatefulWidget {
  final String appName;
  final String imageUrl;
  IconItem(this.appName, this.imageUrl);

  @override
  _IconItemState createState() => _IconItemState(imageUrl);
}

class _IconItemState extends State<IconItem> {
  bool _isHovered = false;
  final String imageUrl;

  _IconItemState(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovered ? 1.4 : 1.0),
        transformAlignment: Alignment.center,
        child: Container(
            width: 100,
            //alignment: Alignment.center,
            child: ClipRect(
                child: Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ))),
      ),
    );
  }
}
