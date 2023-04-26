import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData(
        backgroundColor: Colors.black26,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculadora de IMC')),
        body: const Text('Aplicativo'),
      ),
    );
  }
}
