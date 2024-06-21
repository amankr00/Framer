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
      child: Card(
        color: _isHovering
            ? Color.fromARGB(255, 11, 160, 171) // Hover color
            : Color.fromARGB(255, 0, 238, 255), // Default color
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.045,
            alignment: Alignment.center,
            child: Text(
              'Subscribe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


