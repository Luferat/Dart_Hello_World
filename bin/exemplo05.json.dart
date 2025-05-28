import 'dart:convert';

class Pessoa {
  String nome;
  int idade;
  List<String> habilidades;

  Pessoa({required this.nome, required this.idade, this.habilidades = const []});

  // Método para converter o objeto Pessoa em um Map (para serialização)
  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'habilidades': habilidades,
    };
  }

  // Construtor de fábrica para criar um objeto Pessoa a partir de um Map (para desserialização)
  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return Pessoa(
      nome: json['nome'],
      idade: json['idade'],
      habilidades: (json['habilidades'] as List<dynamic>?)?.cast<String>() ?? [],
    );
  }

  @override
  String toString() {
    return 'Pessoa{nome: $nome, idade: $idade, habilidades: $habilidades}';
  }
}

void main() {
  // 1. Criando um objeto Pessoa
  final pessoaOriginal = Pessoa(nome: 'Carlos', idade: 35, habilidades: ['Dart', 'Flutter', 'Backend']);
  print('Objeto Pessoa Original: $pessoaOriginal');

  print('\n1) ----------------------------\n');

  // 2. Serialização: Convertendo o objeto Pessoa para JSON
  final jsonString = jsonEncode(pessoaOriginal);
  print('String JSON: $jsonString');

  print('\n2) ----------------------------\n');

  // 3. Desserialização: Convertendo a string JSON de volta para um objeto Pessoa
  final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;
  final pessoaDesserializada = Pessoa.fromJson(decodedJson);
  print('Objeto Pessoa Desserializado: $pessoaDesserializada');

  print('\n3) ----------------------------\n');

  // Verificando se os objetos são iguais
  print('Objetos são iguais? ${pessoaOriginal.toString() == pessoaDesserializada.toString()}');

  // Trabalhando com uma lista de objetos Pessoa e JSON
  final listaPessoas = [
    Pessoa(nome: 'Ana', idade: 28, habilidades: ['UI/UX', 'Design']),
    Pessoa(nome: 'Pedro', idade: 40, habilidades: ['Java', 'Spring']),
  ];

  print('\n4) ----------------------------\n');

  // Serializando a lista de objetos para uma string JSON, List.map() → iterator
  final listaJsonString = jsonEncode(listaPessoas.map((p) => p.toJson()).toList());
  print('Lista de Pessoas em JSON: $listaJsonString');

  print('\n5) ----------------------------\n');

  // Desserializando a string JSON de volta para uma lista de objetos Pessoa
  final decodedListaJson = jsonDecode(listaJsonString) as List<dynamic>;
  final listaPessoasDesserializada = decodedListaJson.map((json) => Pessoa.fromJson(json)).toList();
  print('Lista de Pessoas Desserializada: $listaPessoasDesserializada');
}