import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Dados das retas r1 e r2
    final double x0 = 2;
    final double y0 = 3;
    final double z0 = 4;
    final double a = 1;
    final double b = 2;
    final double c = 2;

    final double x1 = 5;
    final double y1 = 7;
    final double z1 = 8;
    final double d = -2;
    final double e = 1;
    final double f = 2;

    // Verifica a posição relativa das retas
    String position =
        verificarPosicaoRelativa(x0, y0, z0, a, b, c, x1, y1, z1, d, e, f);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Verificação de posição relativa de retas'),
        ),
        body: Center(
          child: Text(
            'A posição relativa das retas é: $position',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  String verificarPosicaoRelativa(double x0, double y0, double z0, double a,
      double b, double c, double x1, double y1, double z1, double d, double e, double f) {
    // Verifica se os vetores diretores são paralelos
    if ((a / d == b / e) && (a / d == c / f)) {
      // Verifica se os pontos são coincidentes
      if (((x1 - x0) / a == (y1 - y0) / b) && ((x1 - x0) / a == (z1 - z0) / c)) {
        return 'As retas são coincidentes';
      } else {
        return 'As retas são paralelas distintas';
      }
    } else if ((a / d == -b / e) && (a / d == -c / f)) {
      return 'As retas são reversas';
    } else {
      // Calcula o ângulo entre os vetores das retas concorrentes
      double angulo = atan(sqrt((a * a + b * b + c * c) / (d * d + e * e + f * f)));

      // Convertendo para graus
      angulo = angulo * 180 / pi;

      return 'As retas são concorrentes e o ângulo entre elas é: $angulo graus';
    }
  }
}
