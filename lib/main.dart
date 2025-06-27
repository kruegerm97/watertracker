import 'package:flutter/material.dart';
import 'package:watertracker/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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