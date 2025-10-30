import 'dart:io';

void main() {
  print("Vamos fazer a soma entre dois números!");

  //função double faz a conversão de String para número decimal
  double numeroUm = double.parse( //doube.parse converte String em double
    stdin.readLineSync()!,
  ); /* Converte a entrada do usuário para double; ! indica que a entrada nunca será nula*/

  double numeroDois = double.parse(stdin.readLineSync()!);

  print("Nosso resultado é: ${numeroUm + numeroDois}");
}
