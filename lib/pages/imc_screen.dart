import 'package:flutter/material.dart';
import 'package:imc_calculator/components/calculator.dart';
import 'package:imc_calculator/components/result_section.dart';

class ImcScreen extends StatefulWidget {
  const ImcScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ImcState();
}

class _ImcState extends State<ImcScreen> {
  double? imc;

  setImc(double newImc) {
    setState(() {
      imc = newImc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Calculator(setImc),
          if (imc != null) ImcResultSection(imc!),
        ],
      ),
    );
  }
}
