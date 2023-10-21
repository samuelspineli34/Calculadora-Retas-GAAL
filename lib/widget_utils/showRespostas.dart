import 'package:flutter/material.dart';

void mostrarResultados(BuildContext context, var resultado) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: 600,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: const EdgeInsets.only(bottom: 20, top: 30),
              child: Column(
                children: [
                  Text('$resultado', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),)
                ],
              ),),
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
    }
  );
}