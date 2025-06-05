import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Watertracker'),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
      ),
      body: Text('Hello World!'),
    );
  }
}