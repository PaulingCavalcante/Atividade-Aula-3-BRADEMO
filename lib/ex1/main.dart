import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 1!',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Exercício 1!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green[700],
        ),

        backgroundColor: Colors.grey[200],
        body: Align(
          alignment: const Alignment(-0.2, -0.6),
          child: Container(
            width: 120,
            height: 110,
            color: Colors.deepOrange,

            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hi Mom 🔥',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
