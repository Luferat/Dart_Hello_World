import 'dart:io';

void main() {
  // Variáveis e tipagem
  var nome =
      "Joca"; // Tipo String inferido ← Depende do primeiro valor atribuído
  String? sobrenome =
      'Silva'; // 'sobenome' aceita valor 'null' por causa do '?'
  final int idade = 25; // Isso é uma constante de execução
  const cpf = 09876543200; // Constante de código
  bool isBR = true; // True ou false

  // Reatribuindo valores para variáveis
  nome = "Joquinha";
  sobrenome = 'da Silva';
  sobrenome = null; // ← Isso funciona por causa de 'String? sobrenome'

  // idade = 29; ← Erro
  // cpf = 99988877766; ← Erro

  // Comando de saída para o terminal com interpolação
  print("Nome: $nome ${isBR}");
  print('Sobrenome: ${sobrenome}');
  print('Ano atual ${DateTime.now().year}');

  // Coleção (array)
  // Índices →              [0]      [1]     [2]       [3]        [4]
  List<String> pessoas = ['Maria', 'João', 'Pedro', 'Josefina', 'Maria'];
  print("O item com índice 2 é ${pessoas[2]}");

  // Coleção (Dicionário)
  Map<String, Object> telefones = {
    "celular": "(21) 998877665",
    "residência": "(21) 22334456",
  };
  print("O item com a chave 'celular' é ${telefones["celular"]}");

  // Coleção (conjunto)
  Set<String> cores = {'azul', 'verde', 'vermelho'};
  cores.add('laranja');
  print("Conjunto de cores: ${cores}");

  print(pessoas[1]);
  print(pessoas);
  print(pessoas.length); // Retorna o tmanho da coleção
  print(telefones['celular']); // Retorna uma chave do dicionário
  print(telefones); // Retorna o dicionário inteiro
  print(cores); // Retorna o conjunto inteiro
  // print(cores[1]); ← Erro. Conjuntos não são ordenados

  // Lógica
  print(true && false);
  print(true || false);

  int valor = 10;
  valor += 5; // Mesmo que valor = valor + 5 (Incremento)

  print(valor);
  print(++valor); // print(valor + 1)

  String carro = 'Fusca';
  carro += ' preto'; // Concatenar
  print(carro);

  // Operador ternário
  var coisa = 'pipa';
  //       Expressão ? se true ? se false
  print(coisa == 'pião' ? 'Oba' : 'Não não'); // Operador ternário

  // Vendo o tipo da variável
  print(cpf.runtimeType);

  // Módulo / Resto da divisão
  print(10 % 2); // Se o resto é zero o número é par
  print(11 % 2); // Se o resto é != zero o número é ímpar

  // Entrada do usuário pelo terminal
  // 1) Importe 'dart:io' no começo do código
  // 2) Executa o método 'stdin.redLineSync();
  print ('Digite alguma coisa:');
  String? digitado = stdin.readLineSync(); // armazena a digitação na variável
  print('Você digitou: $digitado');
}
