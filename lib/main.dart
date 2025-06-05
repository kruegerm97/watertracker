import 'package:flutter/material.dart';
import 'package:watertracker/home.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: Text('Container 1'),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: Text('Container 2'),
          ),
        ]
      )
    );
  }
}