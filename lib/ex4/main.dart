import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Images Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ImageScreen(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imagens com SizedBox')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Primeira imagem (maior)
            FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/en/thumb/e/ea/Tanjirou_manga.png/250px-Tanjirou_manga.png',
                width: 300,
                height: 300,
              ),
            ),
            // SizedBox separador
            const SizedBox(height: 40),
            // Segunda imagem (menor)
            FittedBox(
              fit: BoxFit.contain,
              child: Image.network(
                'https://hollowknight.io/data/image/game/hollow-knight-game.png',
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}