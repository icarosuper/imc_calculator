import 'package:flutter/material.dart';

class ImcResultSection extends StatelessWidget {
  final double imc;

  const ImcResultSection(this.imc, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Seu IMC é ${imc.toStringAsFixed(2)}');
  }
}
