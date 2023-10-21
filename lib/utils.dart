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

// void resultadoEquacao(BuildContext context, x, y, z, i, j, k) {

//   i = i - x;
//   j = j - y;
//   k = k - z;

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             width: 300,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text('Equação Vetorial da Reta:'),
//                 Text("r(t) = ($x, $y, $z) + t * ($i, $j, $k), { t pertence a R }"),
//                 SizedBox(height: 10),
//                 Text('Equação Paramétrica da Reta:'),
//                 Text(" r(t) = \n x = $x + $i t\n y = $y + $j t\n z = $z + $k t\n"),
//               ],
//             ),
//           ),
//         );
//       },
//     );
// }

// void resultadoEquacao(BuildContext context, x, y, z, i, j, k) {

//   i = i - x;
//   j = j - y;
//   k = k - z;

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           content: Container(
//             width: 300,
//             height: 200,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Equação Vetorial da Reta:',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'r = (${x} + ${i}t, ${y} + ${j}t, ${z} + ${k}t)',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Equação Paramétrica da Reta:',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   'x = ${x} + ${i}t',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   'y = ${y} + ${j}t',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   'z = ${z} + ${k}t',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('Fechar'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
// }

// void resultadoEquacao(BuildContext context, x, y, z, i, j, k) {

//   i = i - x;
//   j = j - y;
//   k = k - z;

//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: Container(
//           width: 600,
//           height: 400,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'Equação Vetorial da Reta:',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'r = (${x} + ${i}t, ${y} + ${j}t, ${z} + ${k}t)',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Equação Paramétrica da Reta:',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'x = ${x} + ${i}t',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//               Text(
//                 'y = ${y} + ${j}t',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//               Text(
//                 'z = ${z} + ${k}t',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 20),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: Text('Fechar'),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }

void resultadoEquacao(BuildContext context, x, y, z, i, j, k) {

  i = i - x;
  j = j - y;
  k = k - z;

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
                        'r = (${x} + ${i}t, ${y} + ${j}t, ${z} + ${k}t)',
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
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Fechar'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
