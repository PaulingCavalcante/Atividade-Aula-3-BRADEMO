import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack & Positioned Widget',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack & Positioned Widget'),
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Stack(
            children: [
         
              Positioned(
                top: 0,
                left: 0,
                child: _coloredBox(
                  color: Colors.green[400]!,
                  label: 'Green',
                  size: 180,
                ),
              ),


              Positioned(
                top: 30,
                left: 30,
                child: _coloredBox(
                  color: Colors.red[400]!,
                  label: 'Red',
                  size: 180,
                ),
              ),

            
              Positioned(
                top: 60,
                left: 60,
                child: _coloredBox(
                  color: Colors.purple[300]!,
                  label: 'Purple',
                  size: 180,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _coloredBox({
    required Color color,
    required String label,
    required double size,
  }) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}