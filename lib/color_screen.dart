import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  final Color screenColor;

  ColorScreen(this.screenColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Color'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        backgroundColor: Colors.white, // Optional: set background color for the AppBar
      ),
      body: Container(
        color: screenColor,
        child: Center(
          child: Text(
            'This is the color screen',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
