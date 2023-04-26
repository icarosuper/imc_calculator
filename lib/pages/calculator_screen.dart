import 'package:flutter/material.dart';
import 'package:imc_calculator/components/footer.dart';
import 'package:imc_calculator/components/result_section.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorScreen> {
  int? imc;

  setImc(int newImc) {
    setState(() {
      imc = newImc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: const [
            Text('Insira seu peso e altura abaixo para calcular o seu IMC'),
            CalculatorScreen(),
            ImcResultSection(),
          ],
        ),
        const Footer(),
      ],
    );
  }
}
