import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class phase2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Row(
                // Purple image and Right - side text
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Padding(
                  //   padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
                    // child: 
                    Container(
                        // color:Colors.black,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ClipRect(
                            child: Image.asset(
                      'assets/images/sidelook.png',
                      // width: 800,
                      // height: 750,
                      fit: BoxFit.contain,
                    ))),
                  // ),
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
                          // width: 450,
                          width: MediaQuery.of(context).size.width * 0.3,
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
                            // width: 550,
                            width: MediaQuery.of(context).size.width * 0.4,
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
              );
              }
              }