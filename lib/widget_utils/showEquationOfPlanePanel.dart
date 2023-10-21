// ignore: file_names
import 'package:calculadora_retas/math_functions.dart';
import 'package:calculadora_retas/widget_utils/showRespostas.dart';
import 'package:flutter/material.dart';

void showEquationOfPlaneDialog(BuildContext context) {
  // Definição do ponto C = (x2, y2, z2) e Vetor Normal N = (a, b, c):
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
                        var pontoC = [x, y, z];
                        var vetorN = [a, b, c];
                        var resultado = equacaoDoPlano(pontoC, vetorN);
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