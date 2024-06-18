import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    text: 'Collaborate ',
                    style: TextStyle(
                      color: Color(0xff008cf7),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'live on the canavas.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]))),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30),
              child: Container(
                  // width: 425,
                  // height : 120,
                  width: MediaQuery.of(context).size.width * 0.4,
                  // color : const Color.fromARGB(255, 227, 228, 227),
                  child: Text(
                    'Work with another designer, pull in a developer, or quickly give someone an overview of your design. Reap the rewards of fast feedback loops.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  )),
            )
          ],
        )
      ],
    );
  }
}
