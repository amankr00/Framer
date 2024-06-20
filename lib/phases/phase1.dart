import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:framer/navbar/navbar.dart';
import 'package:framer/phases/anime4.dart';
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
                  child: HoverEffectExample().animate()
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

class HoverEffectExample extends StatefulWidget {
  @override
  _HoverEffectExampleState createState() => _HoverEffectExampleState();
}

class _HoverEffectExampleState extends State<HoverEffectExample> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MouseRegion(
          onEnter: (event) => _updateHover(true),
          onExit: (event) => _updateHover(false),
          child : GestureDetector(
           onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return NameNumberDialog();
            },
          );
        },
          child: AnimatedContainer(
            
            duration: Duration(milliseconds: 200),
            width: _isHovering ? 180 * 1.05 : 180,
            height: _isHovering ? 50 * 1.05 : 50,
                    decoration: BoxDecoration(
                      color: _isHovering ? Colors.red:Colors.blue,
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
                  ),
                  )
        ),
      
    );
  }

  void _updateHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}


class NameNumberDialog extends StatefulWidget {
  @override
  _NameNumberDialogState createState() => _NameNumberDialogState();
}

class _NameNumberDialogState extends State<NameNumberDialog> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter Name and Number'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: _numberController,
            decoration: InputDecoration(labelText: 'Number'),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            String name = _nameController.text;
            String number = _numberController.text;
            print('Name: $name, Number: $number');
            Navigator.of(context).pop();
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
