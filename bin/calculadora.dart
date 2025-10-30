import 'dart:io';

void main() {
  print("Vamos fazer a soma entre dois números!");

  //função double faz a conversão de String para número decimal
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

  void soma(){
  print("Nosso resultado é: ${numeroUm + numeroDois}");
  }

  soma();
}

