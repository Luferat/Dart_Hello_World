/*
Exercício 3: A Classe Livro

Crie uma classe chamada Livro com os seguintes atributos:
 - titulo (String)
 - autor (String)

Adicione um construtor que receba o título e o autor como parâmetros e os atribua aos atributos da classe.
Crie um método chamado detalhes() que imprima na tela uma mensagem formatada com o título e o autor do livro (ex: "Título: [título], Autor: [autor]").
No método main(), crie três instâncias da classe Livro com diferentes títulos e autores e chame o método detalhes() para cada um deles.
*/

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);

  void detalhes() {
    print('Título: $titulo, Autor: $autor');
  }
}

void main() {
  var livro1 = Livro('Curva do Vento', 'Joquinha da Silva');
  var livro2 = Livro('Depois de Antes', 'KK da Turma');
  var livro3 = Livro('Se foi ainda está lá', 'Ternurinha da Pomba');

  livro1.detalhes();
  livro2.detalhes();
  livro3.detalhes();
}
