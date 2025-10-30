import 'dart:io';

void main() {
  print("Vamos fazer uma operação entre dois valores numéricos:");
  //função double faz a conversão de String para número decimal
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

  void soma() {
    print("O resultado da nossa soma é: ${numeroUm + numeroDois}");
  }

  void subtracao() {
    print("O resultado da nossa subtração é: ${numeroUm - numeroDois}");
  }

  void divisao() {
    print("O resultado da nossa divisão é: ${numeroUm / numeroDois}");
  }

  void multiplicacao() {
    print("O resultado da nossa multiplicação é: ${numeroUm * numeroDois}");
  }

  multiplicacao();
}



