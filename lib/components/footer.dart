import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Aplicativo criado por Ícaro Gomes Motta',
      style: TextStyle(fontSize: 15),
    ));
  }
}
