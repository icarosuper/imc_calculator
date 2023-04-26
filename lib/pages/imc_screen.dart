import 'package:flutter/material.dart';
import 'package:imc_calculator/components/calculator.dart';
import 'package:imc_calculator/components/footer.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Insira seu peso e altura abaixo para calcular o seu IMC',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
              )
            ),
            Calculator(setImc),
            if(imc != null) ImcResultSection(imc!),
          ],
        ),
        const Footer(),
      ],
    );
  }
}
