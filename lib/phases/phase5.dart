import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/phases/anime2.dart';

class phase5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Padding(
        // padding: EdgeInsetsDirectional.only(end: 159),
        // child :
        Container(
          // width: 750,
          // height: 700,
          width: MediaQuery.of(context).size.width * 0.37,
          // color: Colors.purple,
          child: ClipRRect(
              child: Image.asset(
            'assets/images/lowlogo3.png',
          )),
        ),
        // ),

        // Padding(padding: EdgeInsetsDirectional.only(end: 200),

        // child :
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                // width : 380,
                // height: 130,
                width: MediaQuery.of(context).size.width * 0.4,
                // color: Colors.green,
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'Ensuring ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 4),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'legal ',
                    style: TextStyle(
                      color: Color(0xff008cf7),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'data security ',
                    style: TextStyle(
                      color:  Color(0xff008cf7),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'compliance',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]))),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30),
              child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Anime2(),
                              Container(
                                child: Text(
                                  'Ensure legal and regulatory compliance.',
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
                              'Implement robust data protection measures.',
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
                              'Conduct regular security audits.',
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
          ],
        )
      ],
    );
  }
}
