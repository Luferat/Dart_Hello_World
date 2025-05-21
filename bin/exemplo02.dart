void main() {
  int idade = 10;
  if (idade >= 18) {
    print('Maior de idade');
  } else if (idade >= 12) {
    print('Adolescente');
  } else {
    print('Criança');
  }
  print('\n-------------------\n');
  // For na iteração
  List<String> planetas = ['Mercúrio', 'Vênus', 'Terra'];
  for (String planeta in planetas) {
    // For-in loop
    print(planeta);
  }

  print('\n-------------------\n');

  planetas.forEach((planeta) {
    // Método forEach (mais funcional)
    print('Planeta: $planeta');
  });

  print('\n-------------------\n');

  String comando = 'ABRIR';
  switch (comando) {
    case 'ABRIR':
      print('Abrindo...');
      print('Estou abrindo');
      break; // break é importante
    case 'FECHAR':
      print('Fechando...');
      break;
    default:
      print('Comando não reconhecido.');
  }
}
