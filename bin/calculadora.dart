import 'dart:io';

void main() {
  print('***CALCULADORA BÁSICA EM DART***');
  print("Faça a escolha de dois números e logo em seguida escolha a operação:");

  double numeroUm = double.parse(
    stdin.readLineSync()!,
  ); //função double faz a conversão de String para número decimal
  double numeroDois = double.parse(stdin.readLineSync()!);
  String operacao = stdin
      .readLineSync()!; //Tratamento de String -nesse caso sinais de operação

  void soma() {
    //Crie a função soma
    print("O resultado da nossa soma é: ${numeroUm + numeroDois}");
  }

  void subtracao() {
    // Crie a função subtracao
    print("O resultado da nossa subtração é: ${numeroUm - numeroDois}");
  }

  void divisao() {
    print("O resultado da nossa divisão é: ${numeroUm / numeroDois}");
  }

  void multiplicacao() {
    print("O resultado da nossa multiplicação é: ${numeroUm * numeroDois}");
  }

  //Otimização da condição switch da nossa calculadora para a escolha da operação
  switch (operacao) {
    case "+":
      soma();
      break;
    case "-":
      subtracao();
      break;
    case "*":
      multiplicacao();
      break;
    case "/":
      divisao();
      break;
  }
  print('***FIM***');
}
