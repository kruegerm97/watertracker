import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
      ),
      body: Center(
        child: Text('Login Screen'),
      ),
    );
  }
}