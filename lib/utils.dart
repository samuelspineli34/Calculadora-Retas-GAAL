import 'dart:math';
import 'package:flutter/material.dart';

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