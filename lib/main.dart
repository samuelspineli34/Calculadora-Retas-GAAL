import 'package:flutter/material.dart';

/**
 * Entrada: Ponto e Vetor
 * 1) Escrever equação vetorial da reta
 * 2) Escrever equação paramétrica da reta
 * 3) Verificar posição relativa das retas:
 *    Paralelas: Distintas
 *               Coincidentes
 *    Concorrentes: Ponto de   interseção
 *                  Ângulo
 *    Reversos
 *
 * Entrada: Ponto e Vetor Normal
 * 1) Determinar equação geral do plano
 * 2) Dada uma reta e um plano, calcular o ponto de interseção e o ângulo
 * entre o plano e a reta
 **/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de retas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora de retas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}
