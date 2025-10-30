import 'dart:io';

void main() {
  print("Vamos fazer uma operação entre dois valores numéricos:");
  //função double faz a conversão de String para número decimal
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

  void soma() {
    print("Nosso resultado da nossa soma é: ${numeroUm + numeroDois}");
  }

  void subtracao() {
    print("Nosso resultado da nossa subtração é: ${numeroUm - numeroDois}");
  }

  void divisao() {
    print("Nosso resultado da nossa divisão é: ${numeroUm / numeroDois}");
  }

  void multiplicacao() {
    print("Nosso resultado da nossa multiplicação é: ${numeroUm * numeroDois}");
  }

  subtracao();
}
