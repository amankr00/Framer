import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/navbar/navbar.dart';
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
                  .slideX(begin: -5,end: 0)
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
                      ))
                      .animate()
                  .fade(delay: 100.ms)
                  .slideX(begin: -5,end: 0),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
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
                    )
                    ,
                  ).animate()
                  .fade(delay : 100.ms)
                  .slideX(begin: -5,end: 0),
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
              ))
              .animate()
                  .fade(duration: 500.ms)
                  .slideX(begin: 1,end: 0),
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
    );
  }
}
