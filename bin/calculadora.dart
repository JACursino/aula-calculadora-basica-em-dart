import 'dart:io';

double numeroUm = 0; //função double declara um numero real
double numeroDois = 0; //função double declara um numero real
String operacao = ''; //Tratamento de String -vazio para o uso de sinais de operação
String? entrada = '';
List<String> operacoes = ['+', '-', '*', '/'];

void soma() {
  //Crie a função soma
  print(numeroUm + numeroDois);
}

void subtracao() {
  // Crie a função subtracao
  print(numeroUm - numeroDois);
}

void divisao() {
  if (numeroDois == 0) {
    print('ERRO: Não é possível dividir por zero!');
  } else {
    print(numeroUm / numeroDois);
  }
}

void multiplicacao() {
  print(numeroUm * numeroDois);
}

void calcular() {
  //Crie a função calcular
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
    default:
      print('ERRO: Operação inválida! Use: +, -, * ou /');
  }
}

void getOperacao() {
  print('Digite uma operação: ${operacoes.toString()}');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (operacoes.contains(entrada)) {
      operacao = entrada!;
    } else {
      print('ERRO: Operação inválida! Use: +, -, * ou /');
      getOperacao();
    }
  }
}

void main() {
  print('\n===================================');
  print('    CALCULADORA BÁSICA EM DART');
  print('===================================\n');
  print("Faça a escolha de dois números e logo em seguida escolha a operação:");

  print('Digite o primeiro número:');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print('Digite o segundo número:');
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print('O resultado da nossa operação é:\n');
  calcular();

  print('\n===================================');
  print('               FIM');
  print('===================================\n');
}
