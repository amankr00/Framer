import 'package:flutter/material.dart';





class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter Snackbar Demo'),
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Create a SnackBar
            final snackBar = SnackBar(
              content: Text('This is a Snackbar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Code to execute when the action is pressed
                },
              ),
            );

            // Display the SnackBar
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
