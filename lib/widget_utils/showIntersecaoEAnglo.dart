// ignore: file_names
import 'package:calculadora_retas/math_functions.dart';
import 'package:calculadora_retas/widget_utils/showRespostas.dart';
import 'package:flutter/material.dart';

void showIntersectionAndAngleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          // Definição da reta r1:
          String rX = "";
          String rY = "";
          String rZ = "";
          // Definição do vetor v1:
          String vI = "";
          String vJ = "";
          String vK = "";
          // Definição do ponto a2:
          String pX = "";
          String pY = "";
          String pZ = "";
          // Definição do vetor normal n2:
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
                      // Reta r1:
                      var pontoA = [rX, rY, rZ];
                      var vetorA = [vI, vJ, vK];
                      // Plano:
                      var pontoB = [pX, pY, pZ];
                      var vetorN = [nA, nB, nC];
                      var resultado = intersecaoEAnglo(pontoA, vetorA, pontoB, vetorN);
                      print("Valor de resultado: $resultado");
                      mostrarResultados(context, resultado);
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