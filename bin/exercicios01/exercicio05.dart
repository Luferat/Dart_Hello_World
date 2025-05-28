/*
Maior de Três Números:
 - Escreva uma função chamada maiorDeTres que aceite três números inteiros como argumentos e retorne o maior deles.
 - No programa principal, chame a função maiorDeTres com três números diferentes e imprima o resultado.

Referências:
 - https://api.dart.dev/dart-core/List/first.html
 - https://api.dart.dev/dart-core/Iterable/fold.html
 - https://dart.dev/effective-dart/design
*/

import 'dart:math';

int maiorDeTres(int numa, int numb, int numc) {
  List<int> nums = [numa, numb, numc];
  return nums.fold(nums.first, max);
}

void main() {
  print("O maior é ${maiorDeTres(1,20,4)}");
}