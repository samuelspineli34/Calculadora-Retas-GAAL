import 'package:flutter/material.dart';
import 'utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora Retas e Planos"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  equacaoVetorial(context);
                },
                child: Text('1- Equação Vetorial e Paramétrica da Reta'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your logic here
                },
                child: Text('2 - Verificar a Posição Relativa de Duas Retas'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your logic here
                },
                child: Text('3 - Equação do Plano e Ponto de Interceção da Reta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}