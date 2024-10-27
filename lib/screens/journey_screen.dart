import 'package:flutter/material.dart';

class JourneyScreen extends StatelessWidget {
  const JourneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Journey Screen'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Journey Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: JourneyScreen(),
  ));
}
