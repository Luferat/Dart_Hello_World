/*
Exercício 1: A Classe Cachorro

Crie uma classe chamada Cachorro com os seguintes atributos:
 - nome (String)
 - raca (String)
Adicione um construtor que receba o nome e a raça como parâmetros e os atribua aos atributos da classe.
Crie um método chamado latir() que imprima na tela uma mensagem como "O [nome do cachorro] está latindo!".
No método main(), crie duas instâncias da classe Cachorro com nomes e raças diferentes e chame o método latir() para cada um deles.
*/

class Cachorro {
  String nome;
  String raca;

  Cachorro(this.nome, this.raca);

  void latir() {
    print('O $nome está latindo!');
  }
}

void main() {
  var cachorro1 = Cachorro('Pipoca', 'Vira Latas');
  var cachorro2 = Cachorro('Pinduco', 'Rusk');

  cachorro1.latir();
  cachorro2.latir();
}
