import 'package:calculadora_retas/widget_utils/showEquacaoVetorialPanel.dart';
import 'package:calculadora_retas/widget_utils/showEquationOfPlanePanel.dart';
import 'package:calculadora_retas/widget_utils/showIntersecaoEAnglo.dart';
import 'package:flutter/material.dart';
import 'widget_utils/showPosicaoRelativaRetas.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora Retas e Planos", 
        style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showEquacaoVetorialPanel(context);
                },
                child: const Text('1- Equação Vetorial e Paramétrica da Reta', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  dadosReta(context);
                },
                child: const Text('2 - Verificar a Posição Relativa de Duas Retas', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showEquationOfPlaneDialog(context);
                },
                child: const Text('3 - Equação do Plano', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showIntersectionAndAngleDialog(context);
                },
                child: const Text('4 - Ponto de Interseção da reta com o plano e o ângulo.', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}