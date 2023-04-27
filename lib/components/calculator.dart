import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_calculator/controllers/get_imc.dart';

class Calculator extends StatefulWidget {
  final Function setImc;

  const Calculator(this.setImc, {super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  setImc() {
    try {
      final height = double.parse(heightController.text);
      final weight = double.parse(weightController.text);

      widget.setImc(getImc(height, weight));
    } catch (_) {}
  }

  @override
  void initState() {
    heightController.addListener(setImc);
    weightController.addListener(setImc);
    super.initState();
  }

  @override
  void dispose() {
    heightController.dispose();
    weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 40,
      children: [
        const Text('Insira seu peso e altura abaixo para calcular o seu IMC',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
            )),
        TextField(
            controller: heightController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
            ],
            decoration: const InputDecoration(
              labelText: 'Insira a sua altura em m',
              prefixIcon: Icon(Icons.height),
              prefixText: 'Altura: ',
              suffixText: 'm',
              filled: true,
            )),
        TextField(
            controller: weightController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))
            ],
            decoration: const InputDecoration(
              labelText: 'Insira o seu peso em Kg',
              prefixIcon: Icon(Icons.scale),
              prefixText: 'Peso: ',
              suffixText: 'Kg',
              filled: true,
            )),
      ],
    );
  }
}
