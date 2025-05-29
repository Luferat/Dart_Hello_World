/*
Exercício 5: Herança com Animais

Crie uma classe base chamada Animal com um atributo nome (String) e um método emitirSom() que imprima "Som genérico de animal".

Crie duas subclasses de Animal: Cachorro e Gato.
 - Na classe Cachorro, adicione um construtor que chame o construtor da superclasse e sobrescreva o método emitirSom() para imprimir "Au au!".
 - Na classe Gato, adicione um construtor que chame o construtor da superclasse e sobrescreva o método emitirSom() para imprimir "Miau!".

No método main(), crie uma instância de Cachorro e uma instância de Gato e chame o método emitirSom() para cada um deles.
 */

class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print('Som genérico de animal');
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print('Au au!');
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print('Miau!');
  }
}

void main() {
  var cachorro = Cachorro('Rex');
  var gato = Gato('Mimi');

  cachorro.emitirSom();
  gato.emitirSom();
}
