import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class phase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children : [
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Staying ahead with ',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'innovative technology ',
                    style: TextStyle(
                      fontSize: 50,
                      color:Color(0xfffe4d87),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'exploration. ',
                    style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    )),
          
                // TextSpan(
                //     text:
                //         '\n\nNothing that you design is lost in translation. Your creations come complete with CSS and JSX code. Framer is also the only prototyping tool that generates animation code which can be used 1:1 in production. ',
                //     style: TextStyle(
                //       fontSize: 25,
                //       color: Color.fromARGB(255, 0, 0, 0),
                //       fontWeight: FontWeight.w500,
                //     )),
              ]))),

               Column(
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



              ]
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ClipRect(
            child: Image.asset(
              'assets/images/lowlogo4.png',
              // width: 700,
              // height: 250,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
