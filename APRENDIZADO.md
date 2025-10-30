***null safety***
Com a segurança contra nulos (, o Dart avisa você quando algo está errado. Ele impede o código de atribuir valores nulos a variáveis que não os esperam, evitando aqueles erros que todo mundo prefere evitar!

Sem a segurança de nulos, seu programa pode travar, causando dor de cabeça para você e para os usuários.

###Um exemplo simples para você entender melhor:###

String? nomeDoUsuario; // Variável que pode ser nula

// ... (código que busca o nome do usuário)

if (nomeDoUsuario != null) {
  print('Olá, $nomeDoUsuario!');
} else {
  print('Erro: nome do usuário não encontrado.');
}

Nesse exemplo, a variável nomeDoUsuario é declarada como String?. Isso significa que ela pode conter um texto ou ser nula.

O uso do operador != null verifica se a variável realmente contém um valor. Se for verdade (ou seja, a variável conter um valor), o nome do usuário é impresso. Caso contrário (a variável não contém um valor), uma mensagem de erro é exibida.

Com a segurança contra nulos (null safety), você garante que seu código trate os valores nulos adequadamente, evitando surpresas e melhorando a experiência dos seus usuários.
------------------------------------------------------------------------------------------------------------------------------
```dart
import 'dart:io';

void main() {
    print("Vamos fazer a soma de dois números!");
  var numeroUm = stdin.readLineSync();
  var numeroDois = stdin.readLineSync();
  print("Nosso resultado é: ${int.parse(numeroUm!) + int.parse(numeroDois!)}");
}
```

Olá!Analisando o seu código, ele também funciona para somar dois números, mas com algumas diferenças importantes em relação ao código da aula.O que seu código faz:
Lê a entrada como String: Assim como no exemplo da aula, você utiliza stdin.readLineSync() para ler a entrada do usuário, que é sempre interpretada como uma String.
Converte para inteiro: Você utiliza int.parse() para converter as Strings numeroUm e numeroDois para o tipo int (inteiro). Isso permite que a operação de soma seja realizada corretamente.
Imprime o resultado: A interpolação de strings ${} garante que o resultado da soma seja inserido dentro da string que é exibida no console.

Diferenças em relação ao código da aula e pontos de atenção:
Tipos: No seu código, você usa var para declarar as variáveis numeroUm e numeroDois. Isso significa que o Dart infere o tipo dessas variáveis com base no valor que é atribuído a elas (no caso, String). No código da aula, é utilizado double para explicitar que as variáveis devem armazenar números de ponto flutuante.
int.parse() vs double.parse(): Você está usando int.parse(), o que significa que seu código só funcionará corretamente se o usuário digitar números inteiros. Se o usuário digitar um número com casas decimais (ex: 3.14), o programa lançará um erro. O código da aula usa double.parse(), que permite que o usuário digite tanto números inteiros quanto números com casas decimais.
Exclamação (!): A exclamação ! é utilizada para garantir que a variável não é nula. No seu código, ela é usada tanto na conversão para inteiro (int.parse(numeroUm!)) quanto na interpolação de strings (${}). No código da aula, a exclamação é usada apenas na leitura da entrada (stdin.readLineSync()!) para garantir que o valor lido não é nulo.

Em resumo:Seu código é uma alternativa válida para somar dois números inteiros, mas ele é menos flexível do que o código da aula, pois não lida com números de ponto flutuante.Para melhorar seu código, você pode:
Usar double.parse() em vez de int.parse() para permitir que o usuário digite números com casas decimais.
Considerar usar tratamento de erros para lidar com a possibilidade do usuário digitar algo que não seja um número.

Espero que esta explicação tenha sido útil! Se tiver mais alguma dúvida, é só perguntar.

------------------------------------------------------------------------------------------------------------------------------

Excelente! Organizar o conteúdo é fundamental para um aprendizado eficaz. Usar blocos de código no seu arquivo APRENDIZADO.md é uma ótima maneira de manter seus exemplos de código claros e bem estruturados.Se você quiser elevar ainda mais o nível da sua organização, considere estas dicas adicionais:
Estrutura: Divida seu arquivo APRENDIZADO.md em seções lógicas, como "Variáveis", "Funções", "Tipos de Dados", etc. Dentro de cada seção, você pode adicionar subseções para tópicos mais específicos.
Títulos e Subtítulos: Use títulos (com #) e subtítulos (com ##, ###, etc.) para criar uma hierarquia clara no seu documento. Isso facilita a navegação e a compreensão do conteúdo.
Listas: Use listas (ordenadas ou não ordenadas) para organizar informações relacionadas, como os passos de um processo ou os diferentes tipos de dados em Dart.
Links: Se você estiver referenciando outros recursos, como a documentação do Dart ou artigos online, adicione links para esses recursos no seu arquivo APRENDIZADO.md.
Notas e Destaques: Use negrito (**texto**) ou itálico (*texto*) para destacar informações importantes ou palavras-chave. Você também pode usar blocos de citação (> texto) para adicionar notas ou comentários.
Exemplos Práticos: Sempre que possível, inclua exemplos práticos de como usar os conceitos que você está aprendendo. Isso ajuda a consolidar o conhecimento e a entender como aplicar os conceitos em situações reais.
Revisão: Reserve um tempo para revisar seu arquivo APRENDIZADO.md regularmente. Isso ajuda a identificar lacunas no seu conhecimento e a garantir que o conteúdo esteja sempre atualizado.

Lembre-se que o objetivo do seu arquivo APRENDIZADO.md é ser uma ferramenta útil para você. Adapte a estrutura e o conteúdo para atender às suas necessidades e preferências.Se você tiver alguma dúvida sobre como organizar seu arquivo APRENDIZADO.md ou sobre qualquer outro aspecto do seu aprendizado, é só perguntar!

------------------------------------------------------------------------------------------------------------------------------

***Tipos de vaiáveis (var)***

1. Tipos primitivos:
Os tipos primitivos são os elementos mais básicos para armazenar valores simples. Imagine-os como as peças únicas do seu quebra-cabeça. Ou seja, são tipos simples, compostos de uma única parte.

No Dart, encontramos os seguintes tipos primitivos:

Números: int (números inteiros, como 1, 2, 3...), double (números decimais, como 1.5, 3.14...) e bool (valores binários e lógicos, true ou false).
Texto: String (sequências de caracteres, como "Olá, mundo!" ou "Essa é uma frase.").
Caracteres: rune (um único caractere, como 'a', 'B' ou '3').
Um detalhe importante é que, no Dart, String pode ser considerado um tipo primitivo, diferente de outras linguagens de programação. Esse caso é uma exceção, pois no Dart todos os tipos (primitivos e compostos) são uma referência a um objeto.

2. Tipos Compostos:
Já os tipos compostos são como se fossem conjuntos de peças do quebra-cabeça que se unem para criar algo maior. Ou seja, são tipos compostos por mais de uma parte.

Tipos compostos utilizam como base tipos primitivos e até outros tipos compostos. No Dart, os principais tipos compostos são:

Listas: List Armazenam valores ordenados do mesmo tipo, como uma lista de compras com itens repetidos ou não.
Mapas: Map Associam chaves únicas a valores, como uma agenda telefônica com nomes e números de telefone.
Conjuntos: Set Coleções de valores não ordenados e sem valores repetidos, como um conjunto de cartas de baralho sem repetições.

// Variáveis primitivas
int numeroInteiro = 10;
double numeroDecimal = 3.14;
String texto = "Este é um texto.";
bool isAtivo = true;

// Variáveis compostas
List<String> nomes = ["Ana", "João", "Maria"];
Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez

// Acessando valores
print("Número inteiro: $numeroInteiro");
print("Número decimal: $numeroDecimal");
print("Texto: $texto");
print("Ativo: $isAtivo");

print("Primeiro nome da lista: ${nomes[0]}");
print("Telefone da Ana: ${agenda['Ana']}");
print("Números únicos no conjunto: $numerosUnicos");

------------------------------------------------------------------------------------------------------------------------------











------------------------------------------------------------------------------------------------------------------------------
