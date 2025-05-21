class MinhaClasse {
  int id;
  String nome;

  // Construtor
  MinhaClasse(this.id, this.nome);

  // Método
  void saudacao() {
    // concatenando
    // print('Olá, meu nome é ' + nome + ' e meu ID é ' + id);

    // Interpolando
    print("Olá, meu nome é $nome e meu ID é $id");
  }
}

void main() {
  var obj = MinhaClasse(1, 'Dart');
  obj.saudacao();
}