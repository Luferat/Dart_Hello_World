void main() {


  // Condicional if...

  int idade = 10;
  if (idade >= 18) {
    print('Maior de idade');
  } else if (idade >= 12) {
    print('Adolescente');
  } else {
    print('Criança');
  }
  print('\n-------------------\n');

  // Repetição for...
  for (int i = 0; i < 10; i ++){
    print("Loop número $i");
  }

  print('\n-------------------\n');

  // Repetição while...
  int cont = 0;
  while (cont < 10) {
    print("While $cont");
    cont ++;
  }

  print('\n-------------------\n');

  // Repetição do... while...
  int j = 0;
  do {
    print("Do while $j");
    j ++;
  } while (j < 10);

  print('\n-------------------\n');

  // For na iteração
  List<String> planetas = ['Mercúrio', 'Vênus', 'Terra'];

  for (String planeta in planetas) {
    print(planeta);
  }

  print('\n-------------------\n');

  // ForEach na iteração usando lambda
  planetas.forEach((planeta) { // Método forEach é mais funcional por que executa uma função para cada item
    print('Planeta: $planeta');
  });

  print('\n-------------------\n');

  // Condicional switch...
  String comando = 'ABRIR';
  switch (comando) {
    case 'ABRIR': // Se o valor de comando é 'ABRIR'
      print('Abrindo...');
      break; // break é importante
    case 'FECHAR': // Se o valor de comando é 'FECHAR'
      print('Fechando...');
      break;
    default: // Qualquer outr valor para comando
      print('Comando não reconhecido.');
  }
}
