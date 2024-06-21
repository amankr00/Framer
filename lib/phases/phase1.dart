import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/anime4.dart';
import 'package:google_fonts/google_fonts.dart';

class Phase1 extends StatelessWidget {
  double pRt;
  double pLt;

  Phase1(this.pRt, this.pLt);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // left body

        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(pRt, 0, 0, 0),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
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

        // Right Body

        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, pLt, 0),
          child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.7,
              // width: 00,
              // height:800,
              // color: Colors.blue,
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/copy.png',
                  width: MediaQuery.of(context).size.width * 0.5,
                  // height: 650,
                  fit: BoxFit.contain,
                ),
              )).animate().fade(duration: 500.ms).slideX(begin: 1, end: 0),
        ),
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
    return Center(
      child: MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      // color: Colors.red,
                      // height: MediaQuery.of(context).size.height * 0.7,
                      child: subscriptionForm(context));
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
    );
  }

  Stack subscriptionForm(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        // textDirection: TextDirection.rtl,
        // fit: StackFit.loose,
        // overflow: Overflow.visible,
        // clipBehavior: Clip.hardEdge,
        children: [
          // Text("hello"),
          
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
                          child: Image.asset('assets/images/lowlogo2.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: 300,
                          child: Card(
                            child : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                hintText: 'Search openings',
                                hintStyle: TextStyle(
                                  color: Color(0xFF7E7E7E),
                                  letterSpacing: 0,
                                ),
                                border: InputBorder.none,
                              ),
                              
                            ),
                          ),
                        ),
                          ),
                        ),
                      ),
                    ],
                  )),
              
            ]),
          ),

          // Container(
          //   width: MediaQuery.of(context).size.width * 0.70,
          //   height: MediaQuery.of(context).size.height * 0.70,
          //   // color: Colors.blue,
          //   alignment: Alignment.bottomLeft,

          //   child: Container(
          //       height: MediaQuery.of(context).size.height * 0.15,
          //       width: MediaQuery.of(context).size.width * 0.15,
          //       child: ClipRect(
          //         child: Image.asset('assets/images/lowlogo3.png',
          //             fit: BoxFit.contain),
          //       )),
          // ),

          Container(
              // color: const Color.fromARGB(50, 212, 18, 83),
              child: Stack(
                  alignment: Alignment.centerRight,
                  textDirection: TextDirection.rtl,
                  fit: StackFit.loose,
                  // overflow: Overflow.visible,
                  clipBehavior: Clip.hardEdge,
                  children: [
                // Positioned(
                //   top: 530,
                //   left: 50,

                // Positioned(
                //   // bottom : 320,
                //   // right: ,
                //   bottom: MediaQuery.of(context).size.height * 0.15,
                //   right: 20,
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(horizontal: 20),
                //     child: Container(
                //       width: MediaQuery.of(context).size.width * 0.3,
                //       height: MediaQuery.of(context).size.height * 0.07,

                //       color: Colors.pink,
                //       // height: 60,
                //       // child: TextField(
                //       //   controller: _nameController,
                //       //   decoration: InputDecoration(
                //       //     hintText: 'Search openings',
                //       //     hintStyle: TextStyle(
                //       //       color: Color(0xFF7E7E7E),
                //       //       letterSpacing: 0,
                //       //     ),
                //       //     border: InputBorder.none,
                //       //   ),
                //       //   // onTap: () {
                //       //   //   setState(() {
                //       //   //     _filteredJobs = jobs;
                //       //   //   });
                //       //   // },
                //       // ),
                //     ),
                //   ),
                // ),

                // ),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.height * 0.29,
                //   left: 20,
                //   child: Container(
                //     width: 250,
                //     height: 60,
                //     color: Color(0xffEEF4FA),
                //     alignment: Alignment.center,
                //     child: Text('Enter your contact number',
                //         style: TextStyle(
                //           fontSize: 15,
                //           letterSpacing: 0,
                //           fontWeight: FontWeight.w700,
                //           decoration: TextDecoration.none,
                //         )),
                //   ),
                // ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  // height: 300,

                  // child: AlertDialog(
                  //   // width: MediaQuery.of(context).size.width * 0.06,
                  //   title: Text('Enter Name and Number'),
                  //   content: Stack(children: [
                  //     Container(
                  //       width: 700,
                  //       height: 400,
                  //       color: Colors.blue,
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: <Widget>[
                  //           TextField(
                  //             controller: _nameController,
                  //             decoration: InputDecoration(
                  //                 labelText: 'Name'),
                  //           ),
                  // TextField(
                  //   controller: _numberController,
                  //   decoration: InputDecoration(
                  //       labelText: 'Number'),
                  //   keyboardType: TextInputType.number,
                  // ),
                  //           TextField(
                  //             controller: _emailController,
                  //             decoration: InputDecoration(
                  //                 labelText: 'Email'),
                  //             // keyboardType: TextInputType.number,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ]),
                  //   actions: <Widget>[
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.of(context).pop();
                  //       },
                  //       child: Text('Cancel'),
                  //     ),
                  //     TextButton(
                  //       onPressed: () {
                  //         String name = _nameController.text;
                  //         String number = _numberController.text;
                  //         String email = _emailController.text;
                  //         print(
                  //             'Name: $name, Number: $number , Email : $email');

                  //         Navigator.of(context).pop();
                  //       },
                  //       child: Text('Submit'),
                  //     ),
                  //   ],
                  // ),
                ),
              ]))
        ]);
  }

  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
