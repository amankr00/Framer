import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        decoration: BoxDecoration(
          // color: Colors.yellow,
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(
                  137, 228, 228, 228), // Color of the bottom border
              width: 3.0, // Width of the bottom border
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NS APPS INNOVATIONS',
              style: GoogleFonts.rubik(
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            Container(
              // Navbar Open Framer
              width: 190,
              height: 50,

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                // Image and text

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  ClipRRect(
                      child: Image.asset(
                    'assets/images/play.png',
                    width: 40,
                    height: 40,
                  )),
                  Text(
                    'Open Play Store',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
