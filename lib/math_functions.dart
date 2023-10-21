// ignore_for_file: slash_for_doc_comments

import 'dart:math';

/**
 * Dado um ponto A = (x0, y0, z0) e um vetor v = (a, b, c)
 * escreva: 
 * a) equação vetorial da reta.
 * b) equações parametricas da reta.
 */
String equacaoVetorialEParametrica(var pontoA, var vetorV) {
  var resp;
  // a) equação Vetorial da Reta:
  resp = "Equação Vetorial da Reta: \n\n";
  resp += "r(t) = (${pontoA[0]}, ${pontoA[1]}, ${pontoA[2]}) + t * (${vetorV[0]}, ${vetorV[1]}, ${vetorV[2]}), { t pertence a R }\n\n";

  // b) equação Parametrica da Reta.
  resp += "Equação Paramétrica da Reta: \n";
  resp +=  "x = ${pontoA[0]} + ${vetorV[0]}t\n"
            "y = ${pontoA[1]} + ${vetorV[1]}t\n"
            "z = ${pontoA[2]} + ${vetorV[2]}t";


  print(resp);

  return resp;
}

/**
 * Dados um ponto C = (x2, y2, z2) e um vetor normal n = (a, b, c) escreva:
 * a) a equação do plano ax + by + cz + d = 0.
 */
String equacaoDoPlano(var pontoC, var vetorN) {
  var resp;
  // d = -ax - by - cz:
  double d = -double.parse(pontoC[0]) * double.parse(vetorN[0]) - double.parse(pontoC[1]) * double.parse(vetorN[1]) - double.parse(pontoC[2]) * double.parse(vetorN[2]);
  resp = "Equação do Plano: \n\n";
  resp += "${vetorN[0]}x + ${vetorN[1]}y + ${vetorN[2]}z + $d = 0";

  print(resp);

  return resp;
}

/**
 * Dada uma reta qualquer (ponto e vetor), determinar o ponto de interseção da reta com 
 * o plano e o ângulo, ou seja, a(x0 + dt) + b(y0 + et) + c(z0 + ft) + d = 0.
 * Reta r1:
 * pontoA = (rX, rY, rZ)
 * vetorA = (vI, vJ, vK)
 * Plano:
 * pontoB = (pX, pY, pZ)
 * vetorN = (nA, nB, nC)
 */
String intersecaoEAnglo(var pontoA, vetorA, pontoB, vetorN) {

  var resp;

  // Determinar o valor de t na equação da reta para achar o ponto de interseção:
  double t = ((double.parse(pontoB[0]) * double.parse(vetorN[0]) +
          double.parse(pontoB[1]) * double.parse(vetorN[1]) +
          double.parse(pontoB[2]) * double.parse(vetorN[2]) -
          double.parse(pontoA[0]) * double.parse(vetorN[0]) -
          double.parse(pontoA[1]) * double.parse(vetorN[1]) -
          double.parse(pontoA[2]) * double.parse(vetorN[2])) /
          (double.parse(vetorA[0]) * double.parse(vetorN[0]) +
          double.parse(vetorA[1]) * double.parse(vetorN[1]) +
          double.parse(vetorA[2]) * double.parse(vetorN[2])));

    print(t);

    double teta = acos((double.parse(vetorA[0]) * double.parse(vetorN[0]) +
              double.parse(vetorA[1]) * double.parse(vetorN[1]) +
              double.parse(vetorA[2]) * double.parse(vetorN[2])).abs() /
              (sqrt(pow(double.parse(vetorA[0]), 2) +
              pow(double.parse(vetorA[1]), 2) +
              pow(double.parse(vetorA[2]), 2)) *
              sqrt(pow(double.parse(vetorN[0]), 2) +
              pow(double.parse(vetorN[1]), 2) +
              pow(double.parse(vetorN[2]), 2))));

  double alpha = (pi / 2) - teta;

  double d = -double.parse(pontoB[0]) * double.parse(vetorN[0]) - double.parse(pontoB[1]) * double.parse(vetorN[1]) - double.parse(pontoB[2]) * double.parse(vetorN[2]);

  resp = "Equação Paramétrica da Reta: \n\n";
  resp += "x = ${pontoA[0]} + ${vetorA[0]}\n";
  resp += "x = ${pontoA[1]} + ${vetorA[1]}\n";
  resp += "x = ${pontoA[2]} + ${vetorA[2]}\n\n";
  resp += "Equação do Plano: \n\n";
  resp += "${vetorN[0]}x + ${vetorN[1]}y + ${vetorN[2]}z + $d = 0\n\n";
  resp += "Ponto de Interseção: \n\n";
  resp += "(${double.parse(pontoA[0]) + double.parse(vetorA[0]) * t}";
  resp += ", ${double.parse(pontoA[1]) + double.parse(vetorA[1]) * t}";
  resp += ", ${double.parse(pontoA[2]) + double.parse(vetorA[2]) * t})\n\n";
  resp += "Ângulo entre a Reta e o Plano: \n\n";
  resp += "Theta = $teta\n\n";
  resp += "Alpha = $alpha";

  return resp;
}