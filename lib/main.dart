import 'package:flutter/material.dart';
import 'package:imc_calculator/pages/imc_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculadora de IMC')),
        body: const SafeArea(child: ImcScreen()),
      ),
    );
  }
}
