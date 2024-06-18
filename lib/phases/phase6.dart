import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class phase6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Handoff ',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color(0xfffe4d87),
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: 'that devs dream about. ',
                          style: TextStyle(
                            fontSize: 50,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          )),
                      TextSpan(
                          text: '\n\nNothing that you design is lost in translation. Your creations come complete with CSS and JSX code. Framer is also the only prototyping tool that generates animation code which can be used 1:1 in production. ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500,
                          )),
                    ]))),

                    Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ClipRect(
                    child: Image.asset(
                      'assets/images/lowlogo4.png',
                      // width: 700,
                      // height: 250,
                      fit: BoxFit.contain,),
                    ),
                    )
              ],
            );
            }
            }