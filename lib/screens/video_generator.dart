import 'package:flutter/material.dart';

class VideoGeneratorScreen extends StatelessWidget {
  const VideoGeneratorScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Generator'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Coming Soon!',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
