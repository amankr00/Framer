import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class phase3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(80, 0, 0, 0),
          child:
              Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                // width: 400,
                width: MediaQuery.of(context).size.width * 0.3,
                // height: 300,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Strategizing timelines, ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 3, 3),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'allocating resources, ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 3, 3, 3),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'budgeting tasks.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 231, 11),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]))),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Anime2(),
                              Container(
                                child: Text(
                                  'Develop timelines and project milestones.',
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
                        Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Anime2(),
                          Container(
                            child: Text(
                              'Allocate resources and assign tasks.',
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
                        Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                          children :[ 
                          Anime2(),
                          Container(
                            child: Text(
                              'Estimate costs and create budgets.',
                              style: TextStyle(
                                // decoration: TextDecoration.lineThrough,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                // decoration: TextDecoration.none,/
                                fontSize: 25,
                              ),
                            ),
                          ),
                          ]
                        ),
                        
                      ]),
            )
          ]),
        ),
        Container(
            // width: 750,
            // height: 700,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ClipRect(
                child: Image.asset(
              'assets/images/lowlogo2.png',
              fit: BoxFit.contain,
            ))),
      ],
    );
  }
}
