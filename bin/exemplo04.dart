abstract class FormaGeometrica {
  double calcularArea(); // Método abstrato (sem implementação)
}

class Retangulo extends FormaGeometrica {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  @override
  double calcularArea() {
    return largura * altura;
  }
}

class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

void main() {
  // var forma = FormaGeometrica(); // Erro! Não se pode instanciar uma classe abstrata

  var retangulo = Retangulo(5, 10);
  var circulo = Circulo(7);

  print("Área do retângulo: ${retangulo.calcularArea()}");
  print("Área do círculo: ${circulo.calcularArea()}");

  List<FormaGeometrica> formas = [retangulo, circulo];
  for (var forma in formas) {
    print("Área da forma: ${forma.calcularArea()}"); // Comportamento polimórfico
  }
}