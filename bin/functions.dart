// Função sem retorno (Procedure)
void olaMundo(String mensagem) {
  print("Olá Mundo! Essa é sua mensagem: ${mensagem}");
}

// Função com retorno
String seuNome(String nome) {
  return "Olá ${nome}";
}

// Função que retorna a soma de dois inteiros
int soma(int valor1, int valor2) {
  return valor1 + valor2;
}

// Função que retorna nome e idade
String nomeIdade(String nome, int idade){
  return "${nome} tem ${idade} anos.";
}

// Função main() que executa o aplicativo
void main() {
  olaMundo("Viemos em paz!");
  print(seuNome("Joca da Silva"));

  print("Resultado = ${soma(5, 4)}");
  print(nomeIdade("Maria", 25));
}