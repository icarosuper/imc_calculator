import 'package:flutter/material.dart';
import 'package:imc_calculator/controllers/get_imc_icon.dart';
import 'package:imc_calculator/controllers/get_imc_level.dart';
import 'package:imc_calculator/controllers/get_imc_text.dart';

class ImcResultSection extends StatelessWidget {
  final double imc;

  const ImcResultSection(this.imc, {super.key});

  @override
  Widget build(BuildContext context) {
    final imcLevel = getImcLevel(imc);
    final iconPath = getImcIcon(imcLevel);
    final imcText = getImcText(imcLevel);

    return Wrap(
      direction: Axis.vertical,
      spacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Column(children: [
          Text(
            'Seu IMC é: ${imc.toStringAsFixed(2)}.',
            style: const TextStyle(fontSize: 22),
          ),
          Text(
            'Análise: $imcText.',
            style: const TextStyle(fontSize: 22),
          ),
        ]),
        Image(
          image: AssetImage(iconPath),
          height: 140,
        )
      ],
    );
  }
}
