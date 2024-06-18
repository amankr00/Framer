import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:framer/1st%20phase/phase1.dart';
import 'package:framer/2nd%20phase/phase2.dart';
import 'package:framer/3rd%20phase/phase3.dart';
import 'package:framer/4th%20phase/phase4.dart';
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

              // 3rd phase

              phase3(),

              
              // 4th phase 
              phase4(),

              // 5th phase

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

              Padding(
              padding: EdgeInsetsDirectional.only(end: 159),
              child : Container(
              width: 750,
              height: 700,
              // color: Colors.purple,
              child : ClipRRect(
              child : Image.asset('assets/images/lowlogo3.png',
              )
              ),
              ),
              ),

              Padding(padding: EdgeInsetsDirectional.only(end: 200),

              child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              Container(
              width : 380,
              height: 130,
              // color: Colors.green,
              child : RichText(
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
                            ]))
              ),

              Padding(
              padding: EdgeInsetsDirectional.only(top: 30),

              child : Container(
              width: 425,
              height : 120,
              // color : const Color.fromARGB(255, 227, 228, 227),
              child : Text('Work with another designer, pull in a developer, or quickly give someone an overview of your design. Reap the rewards of fast feedback loops.',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
              )
              ),
              )

              ],)
              )
              ],
              ),

              
            ],
          )),
    );
  }
}
