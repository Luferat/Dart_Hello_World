void main() {
  var nome = "Joca";
  String? sobrenome = 'Silva';
  final idade = 25; // Isso é uma constante de execução
  const cpf = 09876543200; // Constante de código
  bool isBR = true;
  // Índices                [0]      [1]     [2]       [3]         [4]
  List<String> pessoas = ['Maria', 'João', 'Pedro', 'Josefina', 'Maria'];

  Map<String, Object> telefones = {
    "celular": "(21) 998877665",
    "residência": "(21) 22334456"
  };

  Set<String> cores = {'azul', 'verde', 'vermelho'};
  cores.add('laranja');

  nome = "Joquinha";
  sobrenome = 'da Silva';

  // sobrenome = null; ← Isso funciona por causa de 'String? sobrenome'

  // idade = 29; ← Erro
  // cpf = 99988877766; ← Erro

  print("Nome: $nome ${isBR}");
  print('Sobrenome: ${sobrenome}');
  print('Ano atual ${DateTime.now().year}');

  print(pessoas[1]);
  print(pessoas);
  print(pessoas.length);
  print(telefones['celular']);
  print(telefones);
  print(cores);
  // print(cores[1]); ← Erro

  print(true && false);
  print(true || false);

  int valor = 10;
  valor -= 5; // valor = valor + 5 (Somar)

  print(valor);
  print(++valor); // print(valor + 1)


  String carro = 'Fusca';
  carro += ' preto'; // Concatenar

  print(carro);


  var coisa = 'pipa';
  print(coisa == 'pião' ? 'Oba' : 'Não não'); // Operador ternário


}
