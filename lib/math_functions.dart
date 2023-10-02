import 'package:flutter/material.dart';
import 'dart:math';

/** Funções para vetores e retas **/

/***************************************************************************
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⢔⣦⣶⣿⣿⣿⣿⡷⠖⠒⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠉⠁⠂⠀⠀⢀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⣰⠶⣦⡤⣄⠀⠀⠀⠀⠀⠀⣠⠖⢩⣶⣿⣿⣿⣿⣿⠟⢉⣠⠔⠊⠁⠀⠀⠀⣀⣄⠀⠀⠉⠑⢦⣠⣤⣤⡀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⣌⡧⡾⠀⠀⠀⠀⡠⠊⢁⣴⣿⣿⣿⣿⣿⢟⣠⡾⠟⠁⠀⣀⣤⣶⠞⣫⠟⠁⠀⢀⠄⠀⢀⠙⢿⣿⣿⣷⣄
    ⠀⠀⠀⠀⢠⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣠⣾⣶⣶⣿⣿⣿⣿⣿⣿⣷⡿⠋⣀⣤⣶⣿⣿⣋⣴⡞⠁⠀⠀⣠⠊⠀⠀⢸⡄⢨⣿⣿⣿⣿
    ⠀⠀⠀⠀⠀⢃⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⠿⠿⢻⣿⣿⣿⣿⣿⣿⠿⠛⢉⣴⣿⢿⣿⠏⠀⠀⠀⡴⠃⣰⢀⠀⢸⣿⣤⣏⢻⣿⣿
    ⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀⢀⣾⡿⣿⡿⠁⠀⢀⣾⣿⣿⣿⡿⠋⠁⠀⣠⣿⠟⢡⣿⡟⠀⢀⣤⣾⠁⣼⣿⢸⡇⢸⣿⣿⣿⡈⣿⣿
    ⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⢀⣾⠋⣼⣿⠁⢀⠀⣼⣿⣿⠟⠁⠀⠀⠀⣰⡿⠋⢠⣿⡿⠁⢠⣾⣿⡏⢀⣿⣿⣾⣿⢸⣿⣿⣿⡇⢹⣿
    ⠀⠀⠀⢰⡶⣤⣤⣄⠀⠀⠀⡼⠁⣼⣿⣿⣾⣿⣰⣿⠟⠁⠀⠀⠀⠀⢠⡿⠁⠀⣾⣿⠃⢠⣿⢿⡿⠁⠸⢿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿
    ⠀⠀⠀⠘⣧⣈⣷⡟⠀⠀⣰⠁⡼⢻⣿⣿⣿⣿⡿⠋⠀⠀⠂⠒⠒⠒⣾⠋⠀⢠⣿⡏⢠⣿⢃⡿⠁⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿
    ⠀⠀⠀⠀⠈⠉⠁⠀⠀⢠⠇⣰⠁⠸⣹⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠐⡇⠀⠀⢸⣿⢃⣿⠋⣿⡀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⠀⡇
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣰⠃⡀⢀⣿⣿⡏⢘⣶⣶⣶⣷⣒⣄⠀⠀⠀⠀⠀⠸⣿⣾⠃⠰⠁⠙⢦⡀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⢠⡇
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡔⢁⠞⢁⣾⣿⣿⣷⠟⠁⣠⣾⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿⡏⠀⠀⠀⠀⠀⠙⢦⡀⠀⢿⣿⣿⣿⣿⣿⣿⣸⠃
    ⠀⠀⠀⠀⠀⠀⠀⣠⣾⡖⠁⣠⣾⣿⣿⣿⡏⠀⢰⠿⢿⣿⣯⣼⠁⠀⠀⠀⠀⠀⠹⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⢬⣿⣿⡘⣿⣿⣏⣿⠀
    ⠀⠀⠀⠀⠀⣠⣾⢟⠋⣠⣾⣿⡿⠋⢿⣿⠀⠀⢼⠀⠀⢀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣙⣷⣴⣆⡀⠀⠀⠈⢿⣧⠸⣿⣿⣿⣿
    ⠀⠀⢀⡤⠞⢋⣴⣯⣾⡿⠟⠋⠀⠀⢸⣿⡆⠀⠸⡀⠉⢉⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣶⣆⠀⠈⢿⣧⠹⣿⣿⣿
    ⠀⠀⠀⣸⣶⣿⣿⠟⠋⠀⠀⠀⠀⣴⡎⠈⠻⡀⠈⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠿⠛⠛⠻⣿⣬⡏⠻⣷⡀⠈⢻⣿⣿⣿⣿
    ⢂⣠⣴⣿⡿⢋⣼⣿⣿⣿⣿⣿⠋⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠺⡄⠀⠀⢀⡾⣿⠁⠀⢹⡇⠀⢠⣿⣿⣿⣿
    ⣿⣿⣽⣯⣴⣿⣿⠿⡿⠟⠛⢻⡤⠚⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠈⠉⢉⡴⠃⠀⠀⢸⠇⢠⣿⣿⣿⣿⣿
    ⣿⡇⣿⠿⣯⡀⠀⠀⠈⣦⡴⠋⠀⠀⢀⠨⠓⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠷⠒⠋⠀⠀⠀⠀⠃⣴⣿⠿⣡⣿⠏⠀
    ⠁⠀⠃⠀⠈⠳⣤⠴⡻⠋⠀⢀⡠⠊⠁⠀⠀⢀⡽⢄⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⠏⣺⠟⠁⠀⠀
    ⠀⠀⠀⠀⠀⡰⠋⢰⠁⠀⠀⠀⠀⠀⣀⠤⠊⠁⠀⠀⢱⡀⠘⢆⡀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠖⠛⠛⢉⣤⠞⠁⠀⠀⠀⠀
    ⠀⠀⠀⠀⡜⠁⠀⠈⢢⡀⠀⠀⠀⠀⠁⠀⠀⠀⣀⠔⠋⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡞⠉⠀⠀⠀⣀⠀⠀⠈
    ⠀⠀⠀⡜⠀⠀⠀⠀⢰⠑⢄⠀⠀⠀⠀⠀⠀⠊⠀⢀⣀⢀⠇⠀⡠⠒⠒⢶⠈⠉⠑⡖⠈⠓⢢⠤⢄⣀⣴⣾⣏⠉⠛⠋⠉⠉⠀⠀⠀⢠
    ⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠑⣄⡀⠀⠀⠀⠀⠀⠀⣹⡿⢤⣼⠃⠀⠀⢸⠀⠀⠀⡇⠀⠀⢸⠀⠀⠈⣿⣿⣿⣦⣀⣀⣀⣀⣀⣶⢶⣿
    ⠀⠀⠀⠀⠀⣠⠔⠒⢻⠀⠀⠀⠃⠉⠒⠤⣀⡀⠤⠚⠁⣇⡰⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⠀⣰⠟⠋⠁⠀⠀⠀⠀⠈⠉⠛⠦⡻
    ⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈
    ⠀⠀⠀⠀⠀⠀⠀⠀⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠃⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠀⠀⠈⠓⠤⣀⡀⠀⠀⠀⠀⠀⢀⣠⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠈⠉⠉⠉⠉⠉⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ***************************************************************************/


class math_functions{
  //Funções de retas

  //Produto escalar de 2 retas
  double prod (BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c,
      TextEditingController point_a2, TextEditingController point_b2, TextEditingController point_c2)
  {
    double product = 0.0;

    product = double.parse(point_a.text)*double.parse(point_a2.text) + double.parse(point_b.text)*double.parse(point_b2.text) +
        double.parse(point_c.text)*double.parse(point_c2.text); //Conversão de TextEditingController para Double
    print("Produto do vetor: " + product.toStringAsFixed(2)); //Print para testes
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text("Produto do vetor: " + product.toStringAsFixed(2)),
          actions: <Widget>[
            TextButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );


    return product;
  }

  //Tamanho do vetor
  double vector_size(BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    /** |u| = sqrt(x1^2 + y1^2 + z1^2) **/
    double vsize = 0.0;
    vsize = sqrt(pow(double.parse(point_a.text),2)+pow(double.parse(point_b.text),2)+
        pow(double.parse(point_c.text),2)); //Conversão de TextEditingController para Double e formula do tam. do vetor
    print("Tamanho do vetor: " + vsize.toStringAsFixed(2)); //Print para testes
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text("Tamanho do vetor: " + vsize.toStringAsFixed(2)),
          actions: <Widget>[
            TextButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    return vsize;
  }

  //Equação vetorial da reta
  //Obs: Tipo String porque retorna uma equação ou tipo de reta

  String vector_equation (BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    return "";
  }
  //Equação paramétrica da reta
  String parametric_equation (BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    return "";
  }
  //Posição relativa de 2 retas
  //Paralelas (distintas, coincidentes), concorrentes (ponto de interseção, ângulo), reversas
  String vector_position (BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    return "";
  }

  //Funções de planos


  //Equação do plano
  String plan_equation(BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    return "";
  }
  //Ponto de interseção do plano na reta
  String plan_intersection(BuildContext context, TextEditingController point_a, TextEditingController point_b, TextEditingController point_c)
  {
    return "";
  }


}