import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/anime4.dart';
import 'package:framer/phases/subs.dart';
import 'package:google_fonts/google_fonts.dart';

class Phase1 extends StatefulWidget {
  final double pRt;
  final double pLt;
  Phase1(this.pRt, this.pLt);
  @override
  _Phase1State createState() => _Phase1State(pRt, pLt);
}

// class _HoverEffectExampleState extends State<HoverEffectExample> {
//   bool _isHovering = false;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _numberController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();

class _Phase1State extends State<Phase1> {
  final double pRt;
  final double pLt;

  _Phase1State(this.pRt, this.pLt);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // left body
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(pRt, 0, 0, 0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(height:50),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      // width: 500,
                      // height: 140,
                      width: MediaQuery.of(context).size.width * 0.3,
                      // height: MediaQuery.of(context).size.height * 0.4,
                      // ${pRt}   ${MediaQuery.of(context).size.width }
                      child: Text(
                        'Create better prototypes, faster.  ',
                        style: GoogleFonts.archivoBlack(
                          textStyle: TextStyle(
                            fontSize: 60,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w100,
                            decoration: TextDecoration.none,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      )
                          .animate()
                          .fade(delay: 100.ms)
                          .slideX(begin: -5, end: 0)
                          .shake(),
                    ),
                  ),

                  Container(
                    // width: 450,
                    // height: 120,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                        'Framer is the best prototyping tool for teams. Quickly create realistic interactive designs, share with just a link, and handoff cleanly.',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        )).animate().fade(delay: 100.ms).slideX(begin: -5, end: 0),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: HoverEffectExample()
                        .animate()
                        .fade(delay: 100.ms)
                        .slideX(begin: -5, end: 0),
                  )
                ]),
          ),
        ),

        // Right Body
        Flexible(
          flex: 1,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, pLt, 0),
            child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.7,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/copy.png',
                    fit: BoxFit.cover,
                  ),
                )).animate().fade(duration: 500.ms).slideX(begin: 1, end: 0),
          ),
        )
      ],
    );
  }
}

class HoverEffectExample extends StatefulWidget {
  @override
  _HoverEffectExampleState createState() => _HoverEffectExampleState();
}

class _HoverEffectExampleState extends State<HoverEffectExample> {
  bool _isHovering = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      child: subscriptionForm(
                          context, _nameController, _numberController));
                },
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: _isHovering ? 180 * 1.05 : 180,
              height: _isHovering ? 50 * 1.05 : 50,
              decoration: BoxDecoration(
                color: _isHovering
                    ? Color.fromARGB(255, 0, 140, 255)
                    : const Color.fromARGB(255, 33, 150, 243),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Get me an app',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 30,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/images/rarrow.png',
                        width: 20,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ]);
  }

  Center subscriptionForm(
      BuildContext context,
      TextEditingController nameController,
      TextEditingController numberController) {
    return Center(
      child: Stack(alignment: Alignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          height: MediaQuery.of(context).size.height * 0.70,
          color: Colors.purple,
          child: Stack(children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.70,
                color: Colors.white),
            Positioned(
              left: 0,
              bottom: 0,
              // right: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  // color: Colors.green,
                  child: ClipRect(
                    child: Image.asset(
                      'assets/images/ltbt.png',
                    ),
                  )),
            ),
            Positioned(
              right: 0,
              top: 0,
              // right: 0,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // color: Colors.green,
                  child: ClipRect(
                    child: Image.asset(
                      'assets/images/rtup.png',
                    ),
                  )),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.70,
                height: MediaQuery.of(context).size.height * 0.70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'GET YOUR OWN APP TODAY',
                      style: GoogleFonts.archivoBlack(
                        textStyle: TextStyle(
                          fontSize: 50,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.none,
                          color: Color(0xff5C6B8B),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: Text(
                          'Your Vision , Our Code',
                          style: GoogleFonts.arimo(
                            textStyle: TextStyle(
                              fontSize: 22,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: Color(0xff5C6B8B),
                            ),
                          ),
                        )),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: ClipRect(
                        child: Image.asset('assets/images/lg.png'),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xffEFF4FA),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            controller: _numberController,
                            textAlign: TextAlign.center,
                             decoration: InputDecoration(
                              hintText: 'Enter your name',
                              hintStyle:GoogleFonts.play(
                                color: Color.fromARGB(255, 163, 162, 162),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.008,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xffEFF4FA),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            controller: _numberController,
                            textAlign: TextAlign.center,
                             decoration: InputDecoration(
                              hintText: 'Enter your contact number',
                              hintStyle:GoogleFonts.roboto(
                                color: Color.fromARGB(255, 163, 162, 162),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.018,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Subscribe(_nameController, _numberController),
                    ),
                  ],
                )),
          ]),
        ),
      ]),
    );
  }

  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}

class Subscribe extends StatefulWidget {
  Subscribe(TextEditingController nameController,
      TextEditingController numberController);

  @override
  _SubscribeState createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
  bool _isHovering = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return subs(context, _nameController, _numberController);
                },
              );
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              width: _isHovering ? 180 * 1.05 : 180,
              height: _isHovering ? 50 * 1.05 : 50,
              decoration: BoxDecoration(
                color: _isHovering
                    ? Color.fromARGB(201, 19, 125, 131)
                    : Color.fromARGB(255, 23, 186, 186),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.19,
                // height: MediaQuery.of(context).size.width * 0.05,
                alignment: Alignment.center,
                child: Text('SUBSCRIBE',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        letterSpacing: 2)),
              ),
            ),
          )),
    ]);
  }

  Center subs(BuildContext context, TextEditingController nameController,
      TextEditingController numberController) {

    // void _printValue() {
    //   print('Entered value: ${_nameController.text}');
    // }

    // String name1 = _nameController.text;
    return Center(
        child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: Colors.purple, borderRadius: BorderRadius.circular(50)),
          alignment: Alignment.center,
          child: Text('We will contact you soon! ${_nameController.text}',
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.white)),
        )
      ],
    ));
  }



  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
