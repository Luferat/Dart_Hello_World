/*
Média de uma Lista:
 - Crie uma lista de números decimais.
 - Escreva um programa que calcule e imprima a média dos números na lista.
*/

void main() {
  List<double> numeros = [10, 15, 2.5, 44, 21];

  double total = 0;

  for(int i=0; i < numeros.length; i ++) {
    total += numeros[i];
  }

  print('A média é ${total / numeros.length}');
}