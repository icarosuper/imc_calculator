import 'package:flutter/material.dart';
import 'package:imc_calculator/components/footer.dart';
import 'package:imc_calculator/pages/imc_calculation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de IMC',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Calculadora de IMC'))),
        body: const SafeArea(child: ImcCalculationScreen()),
        persistentFooterButtons: const [Footer()],
      ),
    );
  }
}
