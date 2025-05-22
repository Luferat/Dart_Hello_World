class MinhaClasse {
  int id;
  String nome;

  // Construtor
  MinhaClasse(this.id, this.nome);

  // Método
  void saudacao() {
    // Concatenando → '+'           Converte 'int' para 'String' ↓
    print('Olá, meu nome é ' + nome + ' e meu ID é ' + id.toString());

    // Interpolando → $ ou ${}
    print("Olá, meu nome é $nome e meu ID é ${id}");

    // Dê preferência a ${variável}
  }
}

void main() {
  var obj = MinhaClasse(1, 'Dart'); // Cria instância de MinhaClasse()
  obj.saudacao(); // Chama método da instância
}