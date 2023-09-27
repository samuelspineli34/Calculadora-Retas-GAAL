import 'package:flutter/material.dart';
import 'package:calculadora_retas/math_functions.dart';
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

TextEditingController point_a = TextEditingController ();
TextEditingController point_b = TextEditingController ();
TextEditingController point_c = TextEditingController ();
TextEditingController point_a2 = TextEditingController ();
TextEditingController point_b2 = TextEditingController ();
TextEditingController point_c2 = TextEditingController ();
double vsize = 0.0;


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
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_a, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto X do 1° vetor"),),),
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_b, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto Y do 1° vetor"),),),
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_c, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto Z do 1° vetor"),),),
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_a2, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto X do 2° vetor"),),),
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_b2, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto Y do 2° vetor"),),),
            Container(padding: EdgeInsets.all(2), child: TextField(controller: point_c2, decoration: InputDecoration(border: InputBorder.none,icon: Icon(Icons.control_point_rounded), hintText: "Digite o ponto Z do 2° vetor"),),),

            ElevatedButton(onPressed: (){vsize = math_functions().vector_size(point_a, point_b, point_c);
            }, child: Text("Calcular tamanho vetor 1")),
            ElevatedButton(onPressed: (){vsize = math_functions().vector_size(point_a2, point_b2, point_c2);
            }, child: Text("Calcular tamanho vetor 2")),
            ElevatedButton(onPressed: (){vsize = math_functions().prod(point_a, point_b, point_c, point_a2, point_b2, point_c2);
            }, child: Text("Calcular produto escalar")),
          ],
        ),
      ),
    );
  }
}
