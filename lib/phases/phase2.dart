import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/phases/anime2.dart';

class phase2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      // Purple image and Right - side text
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Padding(
        //   padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 150, 0),
        // child:
        Padding(
          padding: const EdgeInsets.only(right: 70),
          child: Container(
              // color:Colors.black,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ClipRect(
                  child: Image.asset(
                'assets/images/sidelook.png',
                // width: 800,
                // height: 750,
                fit: BoxFit.contain,
              ))),
        ),
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
                width: MediaQuery.of(context).size.width * 0.35,
                // color: Colors.black12,

                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Thoroughly analyzing ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 3, 3, 3),
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'client needs',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' for projects.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ).animate().fade(duration: 2000.ms).slideX(begin: 5, end: 0),
                )),

            Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  // width: 550,
                  width: MediaQuery.of(context).size.width * 0.3,
                  // height: 300,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Anime2(),
                              Container(
                              width: 450,
                              height: MediaQuery.of(context).size.height * 0.3,
                                child: Text(
                                  'App development companies begin by meeting clients to understand their needs and project goals. They conduct feasibility studies to assess viability, define project scope, and create detailed requirement specifications for clarity and alignment.',
                                  style: TextStyle(
                                    // decoration: TextDecoration.lineThrough,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    // decoration: TextDecoration.none,/
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ]),
                      
                        
                      ]),
                ))
          ],
        )
      ],
    );
  }
}
