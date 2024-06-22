import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
// String Name;
// String Number;

//   HoverCard(String Name, String Number);
  
  

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovering = false;
  // final String Name;
  // final String Number;
  // _HoverCardState(this.Name, this.Number);

  // SecondScreen({required this.dataFromFirst});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    home: Container(
    width: 400,
    height: 40,
      child: Scaffold(
              body: Builder(builder: (context) {
              return Center(
                child: ElevatedButton(onPressed: () {
                final message = SnackBar(content: Text("This is snackbar"));
                ScaffoldMessenger.of(context).showSnackBar(message);
                }, child: Text('Click Me')));
          }     
            ) 
      ),
    )
    );
  }

  // void print(){
  // print('Heelo');}


}
          //   body: Container(
          //     height: MediaQuery.of(context).size.height * 0.045,
          //     alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: _isHovering? Color.fromARGB(183, 18, 125, 131):Color.fromARGB(214, 39, 222, 210), // Background color for the container
          //       borderRadius: BorderRadius.circular(
          //           50), // Match the borderRadius of the Material widget
          //     ),
          //     child: Text(
          //       'Subscribe',
          //       style: TextStyle(
          //         color: Color.fromARGB(255, 213, 47, 47),
          //         fontSize: 20,
          //       ),
          //     ),
          // ),
