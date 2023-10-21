// ignore: file_names
import 'package:calculadora_retas/math_functions.dart';
import 'package:calculadora_retas/widget_utils/showRespostas.dart';
import 'package:flutter/material.dart';

void showEquacaoVetorialPanel(BuildContext context) {
  // Definição do Ponto A = (x0, y0, z0) e do Vetor v = (a, b, c).
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
                        var pontoA = [x, y, z];
                        var vetorV = [i, j, k];
                        var resultado = equacaoVetorialEParametrica(pontoA, vetorV);
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