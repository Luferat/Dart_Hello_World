class Pessoa {
  String nome; // Público por padrão
  int _idade; // Privado à biblioteca (convenção com _)

  Pessoa(this.nome, this._idade);

  int getIdade() {
    return _idade;
  }

  void setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print("Idade inválida!");
    }
  }

  void apresentar() {
    print("Olá, meu nome é $nome e eu tenho $_idade anos.");
  }
}

void main() {
  var pessoa = new Pessoa("Alice", 30);
  print(pessoa.nome); // Acesso direto ao atributo público

  print(pessoa._idade); // Erro! _idade é considerado privado à biblioteca

  print(pessoa.getIdade()); // Acesso controlado através do método getter
  pessoa.setIdade(31); // Modificação controlada através do método setter
  pessoa.apresentar();
}