/*
Exercício 04) Lista de Compras:
Crie uma lista de strings chamada listaDeCompras com pelo menos 5 itens.
Escreva um loop for que percorra a lista e imprima cada item no console.
*/

void main() {
  List<String> listaDeCompras = ['banana', 'batata', 'berinjela', 'coco', 'biscoito'];
  for (String item in listaDeCompras) {
    print(item);
  }
}