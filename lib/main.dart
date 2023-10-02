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
import 'package:flutter/material.dart';
// Import your math_functions.dart file here if it's defined

TextEditingController point_a = TextEditingController();
TextEditingController point_b = TextEditingController();
TextEditingController point_c = TextEditingController();
TextEditingController point_a2 = TextEditingController();
TextEditingController point_b2 = TextEditingController();
TextEditingController point_c2 = TextEditingController();
double vsize = 0.0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    body: SingleChildScrollView(
    child: Center(
    child: Column(
    children: <Widget>[
            Container(padding: EdgeInsets.all(3),child:
            Text("Reta 1", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold))
            ),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.5),
                  child: TextField(
                    maxLength: 5,
                    controller: point_a,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.control_point_rounded),
                      hintText: "Ponto X1",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.5),
                  child: TextField(
                    maxLength: 5,
                    controller: point_b,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.control_point_rounded),
                      hintText: "Ponto Y1",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(1.5),
                  child: TextField(
                    maxLength: 5,
                    controller: point_c,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.control_point_rounded),
                      hintText: "Ponto Z1",
                    ),
                  ),
                ),
              ),
            ]),
            Container(padding: EdgeInsets.all(3),child:
            Text("Reta 2", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold))
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(1.5),
                    child: TextField(
                      maxLength: 5,
                      controller: point_a2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.control_point_rounded),
                        hintText: "Ponto X2",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(1.5),
                    child: TextField(
                      maxLength: 5,
                      controller: point_b2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.control_point_rounded),
                        hintText: "Ponto Y2",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(1.5),
                    child: TextField(
                      maxLength: 5,
                      controller: point_c2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.control_point_rounded),
                        hintText: "Ponto Z2",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Calcula tamanho do vetor 1
                vsize = math_functions().vector_size(context, point_a, point_b, point_c);
              },
              child: Text("Calcular tamanho vetor 1"),
            ),
            ElevatedButton(
              onPressed: () {
                // Calcula tamanho do vetor 2
                vsize =
                    math_functions().vector_size(context, point_a2, point_b2, point_c2);
              },
              child: Text("Calcular tamanho vetor 2"),
            ),
            ElevatedButton(
              onPressed: () {
                // Calcula produto escalar
                vsize = math_functions().prod(context,
                    point_a, point_b, point_c, point_a2, point_b2, point_c2);
              },
              child: Text("Calcular produto escalar"),
            ),
            ElevatedButton(
              onPressed: () {
                // A fazer
              },
              child: Text("Calcular equação vetorial da reta"),
            ),
              ElevatedButton(
                onPressed: () {
                  // A fazer
                },
                child: Text("Calcular equação paramétrica da reta"),
            ),
        ElevatedButton(
          onPressed: () {
            // A fazer
          },
          child: Text("Calcular posição relativa da reta"),
        ),
          ],
        ),
      ),
    ),
    );
  }
}
