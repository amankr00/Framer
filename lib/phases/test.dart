import 'package:flutter/material.dart';

class seen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return NameNumberDialog();
            },
          );
        },
        child: Text('Open Dialog'),
      ),
    );
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
