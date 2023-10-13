import 'package:flutter/material.dart';
import 'dart:math';

/** Funções para vetores e retas **/

class math_functions {
  //Funções de retas

  //Produto escalar de 2 retas
  double prod(
      int flag,
      BuildContext context,
      TextEditingController point_a,
      TextEditingController point_b,
      TextEditingController point_c,
      TextEditingController point_a2,
      TextEditingController point_b2,
      TextEditingController point_c2) {
    double product = 0.0;

    product = double.parse(point_a.text) * double.parse(point_a2.text) +
        double.parse(point_b.text) * double.parse(point_b2.text) +
        double.parse(point_c.text) *
            double.parse(
                point_c2.text); //Conversão de TextEditingController para Double
    print(
        "Produto do vetor: " + product.toStringAsFixed(2)); //Print para testes
    if (flag == 1) {
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
    }

    return product;
  }

  //Tamanho do vetor
  double vector_size(
      int flag,
      BuildContext context,
      TextEditingController point_a,
      TextEditingController point_b,
      TextEditingController point_c) {
    /** |u| = sqrt(x1^2 + y1^2 + z1^2) **/
    double vsize = 0.0;
    vsize = sqrt(pow(double.parse(point_a.text), 2) +
        pow(double.parse(point_b.text), 2) +
        pow(double.parse(point_c.text),
            2)); //Conversão de TextEditingController para Double e formula do tam. do vetor
    print("Tamanho do vetor: " + vsize.toStringAsFixed(2)); //Print para testes
    if (flag == 1) {
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
    }
    return vsize;
  }

  //Equação vetorial da reta
  //Obs: Tipo String porque retorna uma equação ou tipo de reta
  String vector_equation(
      BuildContext context,
      TextEditingController point_a,
      TextEditingController point_b,
      TextEditingController point_c,
      TextEditingController point_a2,
      TextEditingController point_b2,
      TextEditingController point_c2) {
    String a = point_a.text.toString();
    String b = point_b.text.toString();
    String c = point_c.text.toString();
    String a2 = (double.parse(point_a2.text) - double.parse(point_a.text))
        .toStringAsFixed(0);
    String b2 = (double.parse(point_b2.text) - double.parse(point_b.text))
        .toStringAsFixed(0);
    String c2 = (double.parse(point_c2.text) - double.parse(point_c.text))
        .toStringAsFixed(0);

    /** (x, y, z) = (x0, y0, z0) + t(a, b, c) **/
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text("($a, $b, $c) = ($a, $b, $c) + t($a2, $b2, $c2) "),
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

    print(("($a, $b, $c) = ($a, $b, $c) + t($a2, $b2, $c2) "));

    return "";
  }

  //Equação paramétrica da reta
  String parametric_equation(
      BuildContext context,
      TextEditingController point_a,
      TextEditingController point_b,
      TextEditingController point_c,
      TextEditingController point_a2,
      TextEditingController point_b2,
      TextEditingController point_c2) {
    String a = point_a.text.toString();
    String b = point_b.text.toString();
    String c = point_c.text.toString();
    String a2 = (double.parse(point_a2.text) - double.parse(point_a.text))
        .toStringAsFixed(0);
    String b2 = (double.parse(point_b2.text) - double.parse(point_b.text))
        .toStringAsFixed(0);
    String c2 = (double.parse(point_c2.text) - double.parse(point_c.text))
        .toStringAsFixed(0);

    /** (x, y, z) = (x0, y0, z0) + t(a, b, c) **/
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content:
              Text(" r = x = $a + $a2 t\n y = $b + $b2 t\n z = $c + $c2 t\n"),
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

    print(("($a, $b, $c) = ($a, $b, $c) + t($a2, $b2, $c2) "));

    return "";
  }

  String intersectionPoint(
    //Calcular ponto de interseção das retas
    TextEditingController point_a1,
    TextEditingController point_b1,
    TextEditingController point_c1,
    TextEditingController point_a2,
    TextEditingController point_b2,
    TextEditingController point_c2,
  ) {
    double a1 = double.parse(point_a1.text);
    double b1 = double.parse(point_b1.text);
    double c1 = double.parse(point_c1.text);
    double a2 = double.parse(point_a2.text);
    double b2 = double.parse(point_b2.text);
    double c2 = double.parse(point_c2.text);

    double t1 = 0.0;
    double t2 = 0.0;

    if (a1 * b2 - a2 * b1 == 0 &&
        a1 * c2 - a2 * c1 == 0 &&
        b1 * c2 - b2 * c1 == 0) {
      // Retas coincidentes, infinitos pontos de interseção
      return "Retas coincidentes, infinitos pontos de interseção";
    } else if (a1 / a2 == b1 / b2 && a1 / a2 == c1 / c2) {
      // Retas paralelas, não há ponto de interseção
      return "Retas paralelas, não há ponto de interseção";
    }

    // Calcule t1 e t2
    if (a1 != 0) {
      t1 = (a2 - a1) / a1;
      t2 = (c2 - c1 - b2 * t1 + b1) / b2;
    } else if (b1 != 0) {
      t1 = (b2 - b1) / b1;
      t2 = (c2 - c1 - a2 * t1 + a1) / a2;
    } else if (c1 != 0) {
      t1 = (c2 - c1) / c1;
      t2 = (b2 - b1 - a2 * t1 + a1) / a2;
    }

    // Calcule as coordenadas do ponto de interseção
    double x = a1 * t1 + c1;
    double y = b1 * t1 + c1;
    double z = c1;

    return "Ponto de interseção (X, Y, Z): ($x, $y, $z)";
  }

  bool areLinesCoincident(
      TextEditingController point_a1,
      TextEditingController point_b1,
      TextEditingController point_c1,
      TextEditingController point_a2,
      TextEditingController point_b2,
      TextEditingController point_c2,
      ) {
    double a1 = double.parse(point_a1.text);
    double b1 = double.parse(point_b1.text);
    double c1 = double.parse(point_c1.text);
    double a2 = double.parse(point_a2.text);
    double b2 = double.parse(point_b2.text);
    double c2 = double.parse(point_c2.text);

    // Verifique se os vetores diretores são proporcionais
    if (a1 / a2 == b1 / b2 && a1 / a2 == c1 / c2) {
      // Verifique se um ponto pertencente à primeira reta também pertence à segunda
      double t = (a2 - a1) / a1;
      double x1 = a1 * t + c1;
      double y1 = b1 * t + c1;
      double z1 = c1;

      double x2 = a2 * t + c2;
      double y2 = b2 * t + c2;
      double z2 = c2;

      if (x1 == x2 && y1 == y2 && z1 == z2) {
        return true; // As retas são coincidentes
      }
    }

    return false; // As retas não são coincidentes
  }


  //Posição relativa de 2 retas
  //Paralelas (distintas, coincidentes), concorrentes (ponto de interseção, ângulo), reversas
  AlertDialog vector_position(
      BuildContext context,
      TextEditingController point_a,
      TextEditingController point_b,
      TextEditingController point_c,
      TextEditingController point_a2,
      TextEditingController point_b2,
      TextEditingController point_c2) {
    double magnitudeU =
        vector_size(0, context, point_a, point_b, point_c);
    double magnitudeV =
        vector_size(0, context, point_a2, point_b2, point_c2);
    double produto = prod(
        0, context, point_a, point_b, point_c, point_a2, point_b2, point_c2);
    double angulo = acos(produto / (magnitudeU * magnitudeV));
    String pontoint = intersectionPoint(
        point_a, point_b, point_c, point_a2, point_b2, point_c2);

    double a2 = (double.parse(point_a2.text) / double.parse(point_a.text));
    double b2 = (double.parse(point_b2.text) / double.parse(point_b.text));
    double c2 = (double.parse(point_c2.text) / double.parse(point_c.text));

    double t1 = ((double.parse(point_a.text) - double.parse(point_a2.text)) /
        double.parse(point_a2.text));
    double t2 = ((double.parse(point_b.text) - double.parse(point_b2.text)) /
        double.parse(point_b2.text));
    double t3 = ((double.parse(point_c.text) - double.parse(point_c2.text)) /
        double.parse(point_c2.text));

    if (a2 == b2 && b2 == c2) //Nesse caso, as retas são paralelas
    {
      if (t1 == 1 && t2 == 2 && t3 == 3) //Paralelas coincidentes
          {
        print("Coincidentes");
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Resultado"),
              content: Text("As retas são paraleleas coincidentes"),
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
      }
      else //Paralelas distintas
      {
        print("Distintas");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Resultado"),
                content: Text("As retas são paraleleas distintas"),
                actions: <Widget>[
                  TextButton(
                    child: Text("Fechar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            }
        );
      }
    }

    else if (areLinesCoincident(point_a, point_b, point_c, point_a2, point_b2, point_c2)==true) {
      print("Concorrentes");
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Resultado"),
              content: Column(
                children: [
                  Text("As retas são concorrentes."),
                  Text("Ângulo entre as retas (em radianos): $angulo"),
                  Text("Ponto de interseção (X, Y, Z): $pontoint"),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: Text("Fechar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
      );
    }
    else {
      print("Reversas");
      //Caso não caia em nenhum caso, as retas são reveras
      showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text("As retas são reversas"),
          actions: <Widget>[
            TextButton(
              child: Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
      );
    }

    throw Exception("Nenhum caso foi atendido");
  }

  //Funções de planos

  //Equação do plano
  String plan_equation(BuildContext context, TextEditingController point_a,
      TextEditingController point_b, TextEditingController point_c) {
    return "";
  }

  //Ponto de interseção do plano na reta
  String plan_intersection(BuildContext context, TextEditingController point_a,
      TextEditingController point_b, TextEditingController point_c) {
    return "";
  }
}
