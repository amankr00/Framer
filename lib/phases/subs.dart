import 'package:flutter/material.dart';

class HoverCard extends StatefulWidget {
  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
  
      child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(
                50), // Optional: to make the corners rounded
            child: Container(
              height: MediaQuery.of(context).size.height * 0.045,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: _isHovering? Color.fromARGB(184, 31, 210, 219):Color.fromARGB(214, 39, 222, 210), // Background color for the container
                borderRadius: BorderRadius.circular(
                    50), // Match the borderRadius of the Material widget
              ),
              child: Text(
                'Subscribe',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
          ),
          )
    );
  }
}
