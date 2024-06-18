import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class phase4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              height: 400,
              color: Color.fromARGB(143, 243, 239, 239),
              child : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
              Container(
              width: 200,
              height: 200,

              
              
              child : ClipRect(
              child :Image.asset('assets/images/pro.png',
              fit: BoxFit.contain,))
              ),
              

              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              SizedBox(
              height: 90,),
            
              Container(
              // child : Text('"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
              // style: TextStyle(
              // color: Colors.black,),)

              // width: 600,
              // height: 100,
              // color: Colors.green,
              width: MediaQuery.of(context).size.width * 0.5,

              child : RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  text: "Samaksh App was my Idea to ensure teacher's punctuality and to increase student's daily turnout. I am glad that Nishant puts his best efförts to developthis app.\nAfter a year of evaluation, this app tums out to be very efficient and effective and bring about a positive change in this regard and also the school's opening punctuality increases to 96% within a year.\n",
                  style: TextStyle(
                    color: Color.fromARGB(255, 65, 65, 65),
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300
                  ),
                  ),
                  )
              
              
              ),
            
              Container(
              // child : Text('"Framer has been a game-changer in enabling us to bring all stakeholders on board with what the final product experience should actually feel like."',
              // style: TextStyle(
              // color: Colors.black,),)

              width: 600,
              height: 50,
              // color: Colors.blue,

              child : RichText(text: TextSpan(
                  text: 'Shri Pranav Kumar, I.A.S. , Secretary, Home Department, Bihar ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 1, 1, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                    // fontStyle: FontStyle.italic,
                  ),
                  ),
                  )
              
              
              ),

              Container(
              width: 220,
              height: 50,
              // color: Colors.blue,
              child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SelectableText('Get started for free',
              style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 17, 146, 251),
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w700,
              ),
              ),
              Container(
              child:ClipRect(
              child: Image.asset('assets/images/ra.png',
              width: 30,
              height: 30,
              ),)
              ),
              ],
              ),
              )

              ]
              ),

              ],


              ));
              }
              }