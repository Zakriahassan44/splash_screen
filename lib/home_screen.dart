import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: const Text('SplashScreen')),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
      );
  }
}
