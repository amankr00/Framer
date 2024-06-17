import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Navbar

              Container(
                  height: 80,
                  decoration: BoxDecoration(
                    // color: Colors.yellow,
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromARGB(
                            137, 228, 228, 228), // Color of the bottom border
                        width: 3.0, // Width of the bottom border
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Framer',
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        // Navbar Open Framer
                        width: 190,
                        height: 50,

                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Row(
                          // Image and text

                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            ClipRRect(
                                child: Image.asset(
                              'assets/images/profile.png',
                              width: 40,
                              height: 40,
                            )),
                            Text(
                              'Open Framer',
                              style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.none,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),

              // Lower Body

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // left body

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Container(height:50),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Container(
                              width: 500,
                              height: 140,
                              child: Text('Create better prototypes, faster.',
                                  style: TextStyle(
                                    fontSize: 60,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w900,
                                    decoration: TextDecoration.none,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  )),
                            ),
                          ),

                          Container(
                            width: 450,
                            height: 120,
                            child: Text(
                                'Framer is the best prototyping tool for teams. Quickly create realistic interactive designs, share with just a link, and handoff cleanly.',
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                )),
                          ),

                          Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('Sign up for free',
                                      style: TextStyle(
                                          fontSize: 15,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w700,
                                          decoration: TextDecoration.none,
                                          color: Colors.white)),
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
                                  )
                                ]),
                          )
                        ]),
                  ),

                  // Right Body

                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 50, 0),
                    child: Container(
                        // width: 00,
                        // height:800,
                        // color: Colors.blue,
                        child: ClipRRect(
                      child: Image.asset(
                        'assets/images/copy.png',
                        width: 1000,
                        height: 650,
                        fit: BoxFit.cover,
                      ),
                    )),
                  ),

                  //   Positioned(
                  //     top: 150,
                  //     left: -220,

                  //  child :  Container(
                  //   width: 470,
                  // height: 550,
                  // // color: Colors.blue,
                  //   child : ClipRect(
                  //   child : Image.asset('assets/images/emulator.png',
                  //   // height:600,
                  //   // width: 460,
                  //   fit: BoxFit.contain,)
                  //   )
                  //   ),
                  //   )

                  // )
                ],
              ),

              Container(
                  child: Text(
                'Trusted by some of the best in the business',
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

              Row(
                // Purple image and Right - side text
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
                    child: Container(
                        // color:Colors.black,
                        child: ClipRect(
                            child: Image.asset(
                      'assets/images/sidelook.png',
                      width: 800,
                      height: 750,
                      fit: BoxFit.contain,
                    ))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      // color: Colors.black26,
                      // width: 450,
                      // height: 150,
                      // child : Text('The Insert Menu is your toolbox.',

                      // style: TextStyle(
                      // fontSize: 50,
                      // letterSpacing: 0,
                      // fontWeight: FontWeight.w900,
                      // decoration: TextDecoration.none,))
                      // )

                      Container(
                          width: 450,
                          // color: Colors.black12,

                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'The ',
                                    style: TextStyle(
                                      color: const Color.fromARGB(255, 3, 3, 3),
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Insert Menu',
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' is your toolbox.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: Container(
                            width: 550,
                            // height: 300,
                            // color: Colors.blue,
                            child: Text(
                              'Find must-have components and powerful interactive tools in a couple of clicks. Spend your time prototyping, rather than creating every element from scratch.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                  fontSize: 25),
                            )),
                      ),
                    ],
                  )
                ],
              ),

              Row( // 2nd Low Body
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 80, 0),
                  child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 400,
                            // height: 300,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Create delightful animations with ',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 3, 3, 3),
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Magic Motion.',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 255, 231, 11),
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]))),

                             Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),

                            child : Container(
                            width: 400,
                            height: 200,
                            child : Text('Master interaction design without code. Just select your states, adjust the properties, and use the animation editor to quickly create slick animations.',
                            style: TextStyle(
                            color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none,
                                  fontSize: 25),)),)
                      ]),),

                      Container(
                      width: 750,
                      height: 700,
                      child : ClipRect(
                      child : Image.asset('assets/images/lowlogo2.png',
                      fit: BoxFit.contain,))),
                ],
              ),

              Container(
              height: 400,
              color: Colors.black,
              child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
              Container(
              width: 100,
              height: 100,

              
              
              child : ClipRect(
              child :Image.asset('assets/images/pro.png',
              fit: BoxFit.contain,))
              ),
              
            
              Container(
              // child : Text('"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
              // style: TextStyle(
              // color: Colors.black,),)

              width: 400,
              height: 250,

              child : RichText(text: TextSpan(
                  text: ' "Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 199, 182, 182),
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                  )
              
              
              )

              ],


              )),
            ],
          )),
    );
  }
}
