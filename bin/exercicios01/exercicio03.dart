/*
Verificação de Par ou Ímpar:
 - Escreva uma função chamada ehPar que receba um número inteiro como argumento e retorne true se o número for par e false caso contrário.
 - No programa principal, peça ao usuário para digitar um número e utilize a função ehPar para verificar se o número é par ou ímpar, imprimindo a mensagem correspondente.
*/

import 'dart:io';

bool ehPar(int num) {
  return num % 2 == 0;
}

void main() {
  stdout.write('Digite um número inteiro: ');
  String? num = stdin.readLineSync();

  if (ehPar(int.parse(num!))) {
    print('É par!');
  } else {
    print('É ímpar!');
  }
}
