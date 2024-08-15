import 'package:flutter/material.dart';

class ImageGeneratorScreen extends StatelessWidget {
  const ImageGeneratorScreen({super.key});


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Generator'),
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
