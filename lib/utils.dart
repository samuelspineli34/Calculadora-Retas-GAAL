import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

void equacaoVetorial(BuildContext context) {
    String x = "";
    String y = "";
    String z = "";
    String i = "";
    String j = "";
    String k = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Container(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text('Reta r:'),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              x = value;
                            },
                            decoration: InputDecoration(labelText: 'X'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              y = value;
                            },
                            decoration: InputDecoration(labelText: 'Y'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              z = value;
                            },
                            decoration: InputDecoration(labelText: 'Z'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Vetor v:'),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              i = value;
                            },
                            decoration: InputDecoration(labelText: 'Vetor I'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              j = value;
                            },
                            decoration: InputDecoration(labelText: 'Vetor J'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              k = value;
                            },
                            decoration: InputDecoration(labelText: 'Vetor K'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Add your calculation logic here
                        resultadoEquacao(context, double.parse(x), double.parse(y), double.parse(z), double.parse(i), double.parse(j), double.parse(k));
                      },
                      child: Text('Calcular'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

void resultadoEquacao(BuildContext context, x, y, z, i, j, k) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: 600,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Text(
                            'Equação Vetorial da Reta:',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'r(t) = ($x, $y, $z) + t * ($i, $j, $k), { t pertence a R }',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Equação Paramétrica da Reta:',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Text(
                                  'x = ${x} + ${i}t',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'y = ${y} + ${j}t',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'z = ${z} + ${k}t',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Fechar'),
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showEquationOfPlaneDialog(BuildContext context) {
  String x = "";
  String y = "";
  String z = "";
  String a = "";
  String b = "";
  String c = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              content: Container(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text('Ponto C:'),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              x = value;
                            },
                            decoration: InputDecoration(labelText: 'X'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              y = value;
                            },
                            decoration: InputDecoration(labelText: 'Y'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              z = value;
                            },
                            decoration: InputDecoration(labelText: 'Z'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Vetor n:'),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              a = value;
                            },
                            decoration: InputDecoration(labelText: 'A'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              b = value;
                            },
                            decoration: InputDecoration(labelText: 'B'),
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: TextFormField(
                            onChanged: (value) {
                              c = value;
                            },
                            decoration: InputDecoration(labelText: 'C'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        showEquationOfPlaneResultDialog(context, x, y, z, a, b, c);
                      },
                      child: Text('Calcular'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

void showEquationOfPlaneResultDialog(BuildContext context, x, y, z, a, b, c) {
    double d = -double.parse(a) * double.parse(x) - double.parse(b) * double.parse(y) - double.parse(c) * double.parse(z);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 600,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Equação do Plano:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  '${a}x + ${b}y + ${c}z + ${d} = 0',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Fechar'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

void showIntersectionAndAngleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          String rX = "";
          String rY = "";
          String rZ = "";
          String vI = "";
          String vJ = "";
          String vK = "";
          String pX = "";
          String pY = "";
          String pZ = "";
          String nA = "";
          String nB = "";
          String nC = "";

          return AlertDialog(
            content: Container(
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text('Reta r:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            rX = value;
                          },
                          decoration: InputDecoration(labelText: 'X'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            rY = value;
                          },
                          decoration: InputDecoration(labelText: 'Y'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            rZ = value;
                          },
                          decoration: InputDecoration(labelText: 'Z'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Vetor v:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            vI = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor I'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            vJ = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor J'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            vK = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor K'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Plano p:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            pX = value;
                          },
                          decoration: InputDecoration(labelText: 'X'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            pY = value;
                          },
                          decoration: InputDecoration(labelText: 'Y'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            pZ = value;
                          },
                          decoration: InputDecoration(labelText: 'Z'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Vetor n:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            nA = value;
                          },
                          decoration: InputDecoration(labelText: 'A'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            nB = value;
                          },
                          decoration: InputDecoration(labelText: 'B'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            nC = value;
                          },
                          decoration: InputDecoration(labelText: 'C'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showIntersectionAndAngleResultDialog(
                        context,
                        rX,
                        rY,
                        rZ,
                        vI,
                        vJ,
                        vK,
                        pX,
                        pY,
                        pZ,
                        nA,
                        nB,
                        nC,
                      );
                    },
                    child: Text('Calcular'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

void showIntersectionAndAngleResultDialog(
  BuildContext context,
  String rX,
  String rY,
  String rZ,
  String vI,
  String vJ,
  String vK,
  String pX,
  String pY,
  String pZ,
  String nA,
  String nB,
  String nC,
) {
  double t = ((double.parse(pX) * double.parse(nA) +
          double.parse(pY) * double.parse(nB) +
          double.parse(pZ) * double.parse(nC) -
          double.parse(rX) * double.parse(nA) -
          double.parse(rY) * double.parse(nB) -
          double.parse(rZ) * double.parse(nC)) /
      (double.parse(vI) * double.parse(nA) +
          double.parse(vJ) * double.parse(nB) +
          double.parse(vK) * double.parse(nC)));

  double teta = acos((double.parse(vI) * double.parse(nA) +
              double.parse(vJ) * double.parse(nB) +
              double.parse(vK) * double.parse(nC)).abs() /
          (sqrt(pow(double.parse(vI), 2) +
              pow(double.parse(vJ), 2) +
              pow(double.parse(vK), 2)) *
              sqrt(pow(double.parse(nA), 2) +
                  pow(double.parse(nB), 2) +
                  pow(double.parse(nC), 2))));

  double alpha = (pi / 2) - teta;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: 600,
          height: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Equação Paramétrica da Reta:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'x = ${rX} + ${vI}t',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'y = ${rY} + ${vJ}t',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'z = ${rZ} + ${vK}t',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Equação do Plano:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '${nA}x + ${nB}y + ${nC}z + d = 0',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Ponto de Interseção:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'x = ${double.parse(rX) + double.parse(vI) * t}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'y = ${double.parse(rY) + double.parse(vJ) * t}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'z = ${double.parse(rZ) + double.parse(vK) * t}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Ângulo entre a Reta e o Plano:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'Theta = ${teta}',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Alpha = ${alpha}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Fechar'),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class Vetor {
  double i;
  double j;
  double k;

  Vetor(this.i, this.j, this.k);

// Adicione qualquer método ou operação que você precise aqui.
}

void determinarRelacaoRetas(
    BuildContext context,
    double x1,
    double y1,
    double z1,
    double x2,
    double y2,
    double z2,
    double x3,
    double y3,
    double z3,
    double x4,
    double y4,
    double z4) {
  // Calcula os vetores diretores das retas
  Vetor vetorDiretorReta1 = Vetor(x2 - x1, y2 - y1, z2 - z1);
  Vetor vetorDiretorReta2 = Vetor(x4 - x3, y4 - y3, z4 - z3);

  // Verifica se os vetores diretores são proporcionais (paralelas)
  if (vetoresSaoParalelos(vetorDiretorReta1, vetorDiretorReta2)) {
    // Calcula a diferença entre os pontos
    double difX = x3 - x1;
    double difY = y3 - y1;
    double difZ = z3 - z1;

    // Verifica se os vetores de diferença são proporcionais
    if (vetoresSaoProporcionais(vetorDiretorReta1, Vetor(difX, difY, difZ))) {
      mostrarAlertDialog(context, "As retas são paralelas coincidentes.");
    } else {
      mostrarAlertDialog(context, "As retas são paralelas distintas.");
    }
  } else {
    // As retas não são paralelas, verifique se são concorrentes ou reversas
    if (vetoresSaoConcorrentes(vetorDiretorReta1, vetorDiretorReta2)) {
      // Calcula o ângulo entre os vetores diretores e formata para duas casas decimais
      double angulo =
          calcularAnguloEntreVetores(vetorDiretorReta1, vetorDiretorReta2);
      String anguloFormatado = angulo.toStringAsFixed(2);

      if (angulo == 0.0) {
        mostrarAlertDialog(context, "As retas são reversas.");
      } else {
        mostrarAlertDialog(context,
            "As retas são concorrentes com um ângulo de $anguloFormatado graus.");
      }
    } else {
      mostrarAlertDialog(context, "As retas são reversas.");
    }
  }
}

void mostrarAlertDialog(BuildContext context, String mensagem) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Relação de Retas"),
        content: Text(mensagem),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Fechar"),
          ),
        ],
      );
    },
  );
}

bool vetoresSaoParalelos(Vetor vetor1, Vetor vetor2) {
  return (vetor1.i / vetor2.i == vetor1.j / vetor2.j) &&
      (vetor1.i / vetor2.i == vetor1.k / vetor2.k);
}

bool vetoresSaoProporcionais(Vetor vetor1, Vetor vetor2) {
  return (vetor1.i / vetor2.i == vetor1.j / vetor2.j) &&
      (vetor1.i / vetor2.i == vetor1.k / vetor2.k);
}

bool vetoresSaoConcorrentes(Vetor vetor1, Vetor vetor2) {
  double angulo = calcularAnguloEntreVetores(vetor1, vetor2);
  return angulo ==
      180.0; // Verifica se o ângulo é de 180 graus (retas reversas)
}

double calcularAnguloEntreVetores(Vetor vetor1, Vetor vetor2) {
  // Calcula o produto escalar dos vetores
  double produtoEscalar =
      vetor1.i * vetor2.i + vetor1.j * vetor2.j + vetor1.k * vetor2.k;

  // Calcula o módulo dos vetores
  double moduloVetor1 =
      sqrt(vetor1.i * vetor1.i + vetor1.j * vetor1.j + vetor1.k * vetor1.k);
  double moduloVetor2 =
      sqrt(vetor2.i * vetor2.i + vetor2.j * vetor2.j + vetor2.k * vetor2.k);

  // Calcula o cosseno do ângulo entre os vetores
  double cossenoAngulo = produtoEscalar / (moduloVetor1 * moduloVetor2);

  // Calcula o ângulo em graus
  double anguloRad = acos(cossenoAngulo);
  double anguloGraus = anguloRad * 180 / pi;

  if (moduloVetor1 == 0 || moduloVetor2 == 0) {
    return 0.0; // Vetores nulos, ângulo é 0 graus
  }

  if (cossenoAngulo.isNaN) {
    return 0.0; // Tratamento para evitar "NaN"
  }

  return anguloGraus;
}

void mostrarGrafico(BuildContext context, double x1, double y1, double x2,
    double y2, double x3, double y3) {
  AlertDialog dialog = AlertDialog(
    content: Container(
      width: 300,
      height: 300,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(x1, y1),
                FlSpot(x2, y2),
                FlSpot(x3, y3),
              ],
              isCurved: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Fechar'),
      ),
    ],
  );

  showDialog(context: context, builder: (BuildContext context) => dialog);
}

void dadosReta(BuildContext context) {
  String x1 = "";
  String y1 = "";
  String z1 = "";
  String x2 = "";
  String y2 = "";
  String z2 = "";
  String i = "";
  String j = "";
  String k = "";
  String l = "";
  String m = "";
  String n = "";

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            content: Container(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text('Ponto A:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            x1 = value;
                          },
                          decoration: InputDecoration(labelText: 'X1'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            y1 = value;
                          },
                          decoration: InputDecoration(labelText: 'Y1'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            z1 = value;
                          },
                          decoration: InputDecoration(labelText: 'Z1'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Vetor v:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            i = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor I'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            j = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor J'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            k = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor K'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Ponto B:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            x2 = value;
                          },
                          decoration: InputDecoration(labelText: 'X2'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            y2 = value;
                          },
                          decoration: InputDecoration(labelText: 'Y2'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            z2 = value;
                          },
                          decoration: InputDecoration(labelText: 'Z2'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Vetor j:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            l = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor L'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            m = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor M'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            n = value;
                          },
                          decoration: InputDecoration(labelText: 'Vetor N'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Adicione sua lógica de cálculo aqui
                      determinarRelacaoRetas(
                          context,
                          double.parse(x1),
                          double.parse(y1),
                          double.parse(z1),
                          double.parse(x2),
                          double.parse(y2),
                          double.parse(z2),
                          double.parse(i),
                          double.parse(j),
                          double.parse(k),
                          double.parse(l),
                          double.parse(m),
                          double.parse(n));
                    },
                    child: Text('Calcular'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

void gerarGrafico(BuildContext context) {
  String x = "";
  String y = "";
  String z = "";
  String i = "";
  String j = "";
  String k = "";

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            content: Container(
              width: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text('Reta r:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            x = value;
                          },
                          decoration: InputDecoration(labelText: 'X'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            y = value;
                          },
                          decoration: InputDecoration(labelText: 'Y'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            z = value;
                          },
                          decoration: InputDecoration(labelText: 'Z'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Reta r2:'),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            x = value;
                          },
                          decoration: InputDecoration(labelText: 'X2'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            y = value;
                          },
                          decoration: InputDecoration(labelText: 'Y2'),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextFormField(
                          onChanged: (value) {
                            z = value;
                          },
                          decoration: InputDecoration(labelText: 'Z2'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Add your calculation logic here
                      mostrarGrafico(
                          context,
                          double.parse(x),
                          double.parse(y),
                          double.parse(z),
                          double.parse(i),
                          double.parse(j),
                          double.parse(k));
                    },
                    child: Text('Calcular'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}