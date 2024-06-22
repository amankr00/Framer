import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _nameController = TextEditingController();

  @override
  // void dispose() {
  //   _nameController.dispose();
  //   super.dispose();
  // }

  void _printValue() {
    print('Entered value: ${_nameController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextEditingController Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _printValue,
              child: Text('Print Value'),
            ),
          ],
        ),
      ),
    );
  }
}
