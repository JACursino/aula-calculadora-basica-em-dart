import 'dart:io';

void main() {
  print("Digite o primeiro número:");
  double numeroUm = double.parse(stdin.readLineSync()!);

  print("Escolha a operação (+, -, *, /):");
  String operacao = stdin.readLineSync()!;

  print("Digite o segundo número:");
  double numeroDois = double.parse(stdin.readLineSync()!);

  // Mapa com as operações
  Map<String, Function(double, double)> operacoes = {
    '+': (a, b) => a + b, // Soma
    '-': (a, b) => a - b, // Subtração
    '*': (a, b) => a * b, // Multiplicação
    '/': (a, b) => b != 0 ? a / b : double.nan, // Operação de divição e trata divisão por zero
  };

  // Validação e execução
  if (operacoes.containsKey(operacao)) {
    double resultado = operacoes[operacao]!(numeroUm, numeroDois);
    if (resultado.isNaN) {
      print("Erro: divisão por zero!");
    } else {
      print("Resultado: $resultado");
    }
  } else {
    print("Operação inválida!");
  }
}
