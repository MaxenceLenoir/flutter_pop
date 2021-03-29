import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final title = 'New page';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
            child: Text('Je suis une nouvelle page',
                textScaleFactor: 2.0,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal, fontStyle: FontStyle.italic))));
  }
}
