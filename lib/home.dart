import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/1st%20phase/phase1.dart';
import 'package:framer/2nd%20phase/phase2.dart';
import 'package:framer/navbar/navbar.dart';
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
              navbar(),

              // Lower Body  -> 1st phase

              phase1(),

             

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

              // Phase 2

              phase2(),

              // Row(
              //   // Purple image and Right - side text
              //   children: [
              //     Padding(
              //       padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
              //       child: Container(
              //           // color:Colors.black,
              //           child: ClipRect(
              //               child: Image.asset(
              //         'assets/images/sidelook.png',
              //         width: 800,
              //         height: 750,
              //         fit: BoxFit.contain,
              //       ))),
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         // Container(
              //         // color: Colors.black26,
              //         // width: 450,
              //         // height: 150,
              //         // child : Text('The Insert Menu is your toolbox.',

              //         // style: TextStyle(
              //         // fontSize: 50,
              //         // letterSpacing: 0,
              //         // fontWeight: FontWeight.w900,
              //         // decoration: TextDecoration.none,))
              //         // )

              //         Container(
              //             width: 450,
              //             // color: Colors.black12,

              //             child: Align(
              //               alignment: AlignmentDirectional.center,
              //               child: RichText(
              //                 text: TextSpan(
              //                   children: [
              //                     TextSpan(
              //                       text: 'The ',
              //                       style: TextStyle(
              //                         color: const Color.fromARGB(255, 3, 3, 3),
              //                         fontSize: 50,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: 'Insert Menu',
              //                       style: TextStyle(
              //                         color: Colors.purple,
              //                         fontSize: 50,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: ' is your toolbox.',
              //                       style: TextStyle(
              //                         color: Colors.black,
              //                         fontSize: 50,
              //                         fontWeight: FontWeight.bold,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             )),

              //         Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              //           child: Container(
              //               width: 550,
              //               // height: 300,
              //               // color: Colors.blue,
              //               child: Text(
              //                 'Find must-have components and powerful interactive tools in a couple of clicks. Spend your time prototyping, rather than creating every element from scratch.',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.w500,
              //                     decoration: TextDecoration.none,
              //                     fontSize: 25),
              //               )),
              //         ),
              //       ],
              //     )
              //   ],
              // ),

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
              color: Color.fromARGB(143, 243, 239, 239),
              child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
              Container(
              width: 200,
              height: 200,

              
              
              child : ClipRect(
              child :Image.asset('assets/images/pro.png',
              fit: BoxFit.contain,))
              ),
              

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Container(
              height: 130,),
            
              Container(
              // child : Text('"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
              // style: TextStyle(
              // color: Colors.black,),)

              width: 600,
              height: 100,
              // color: Colors.green,

              child : RichText(text: TextSpan(
                  text: '"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                  )
              
              
              ),
            
              Container(
              // child : Text('"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
              // style: TextStyle(
              // color: Colors.black,),)

              width: 600,
              height: 50,
              // color: Colors.blue,

              child : RichText(text: TextSpan(
                  text: 'Evan Karageorgos, Senior Product Designer at Booking.com ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                    // fontStyle: FontStyle.italic,
                  ),
                  ),
                  )
              
              
              ),

              Container(
              width: 220,
              height: 50,
              // color: Colors.blue,
              child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Get started for free',
              style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 17, 146, 251),
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w700,
              ),
              ),
              Container(
              child:ClipRect(
              child: Image.asset('assets/images/ra.png',
              width: 30,
              height: 30,
              ),)
              ),
              ],
              ),
              )

              ]
              ),

              ],


              )),
            ],
          )),
    );
  }
}
