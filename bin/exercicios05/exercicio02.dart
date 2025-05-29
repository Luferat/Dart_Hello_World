/*
Exercício 2: A Classe Retângulo

Crie uma classe chamada Retangulo com os seguintes atributos:
 - largura (double)
 - altura (double)

Adicione um construtor que receba a largura e a altura como parâmetros e os atribua aos atributos da classe.
Crie um método chamado calcularArea() que retorne a área do retângulo (largura * altura).
No método main(), crie uma instância da classe Retangulo, atribua valores para largura e altura, e imprima a área calculada.
*/

class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    return largura * altura;
  }
}

void main() {
  var retangulo = Retangulo(5.0, 3.0);
  print('A área do retângulo é: ${retangulo.calcularArea()}');
}
