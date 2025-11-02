import 'dart:io';

void main(List<String> arguments) {
  double  n1 = 0 ;
  double n2 = 0 ;
  String operacao = "" ;

  stdout.write("Digite o primeiro número: ");
  String? entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada != ""){
      n1 = double.parse(entrada);
    }
  }

  stdout.write("Digite a operação (+, -, *, /): ");
  entrada = stdin.readLineSync();
  if (entrada != null){
      operacao = entrada;
  }

  stdout.write("Digite o segundo número: ");
  entrada = stdin.readLineSync();
  if (entrada != null){
    if (entrada != ""){
      n2 = double.parse(entrada);
    }
  }

  stdout.write("o Resultado da sua operação é: ");
  calcular(operacao, n1, n2);

}

void calcular (String operacao, double n1, double n2){
    switch (operacao){
    case "+":
    soma(n1, n2);
    case "-":
    subtrair(n1, n2);
    case "*":
    multiplicar(n1, n2);
    case "/":
    dividir(n1, n2);
  break;
  }
}

void subtrair(double n1, double n2) {
  print(n1 - n2);
}
void multiplicar(double n1, double n2) {
    print(n1 * n2);
}
void dividir(double n1, double n2) {
    print(n1 / n2);
}
void soma(double n1, double n2) {
    print(n1 + n2);
  }


void dobro(n1) {
  double dobro = n1 * 2;
  print('O dobro de $n1 é $dobro');
}

void media(double n1, double n2) {
  double media = (n1 + n2) / 2;
  print('A média dos número é $media.');
}
