import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barra de Botões',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Barra de Botões'),
          backgroundColor: Colors.blueAccent,
        ),

    
        body: const SizedBox.expand(),

        
        bottomNavigationBar: _buildButtonBar(),
      ),
    );
  }

  Widget _buildButtonBar() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFE0E0E0), width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconButton(icon: Icons.phone, label: 'CALL'),
          _buildIconButton(icon: Icons.near_me, label: 'ROUTE'),
          _buildIconButton(icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }

  
  Widget _buildIconButton({required IconData icon, required String label}) {
    const Color purpleColor = Color(0xFF6A4FA3); // roxo da imagem

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: purpleColor, size: 32),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            color: purpleColor,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}