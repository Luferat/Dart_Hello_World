/*
Calculadora Simples:
 - Crie um programa que realize as quatro operações aritméticas básicas (+, -, *, /) entre dois números.
 - Peça ao usuário para digitar dois números e a operação desejada.
 - Use uma estrutura condicional (if-else ou switch) para realizar a operação e imprimir o resultado.
*/

import 'dart:io';

void main() {
  stdout.write('Digite o primeiro número: ');
  String? nun1 = stdin.readLineSync();

  stdout.write('Digite o segundo número: ');
  String? nun2 = stdin.readLineSync();

  stdout.write('Digite a operação (+, -, * ou /): ');
  String? op = stdin.readLineSync();

  double? val1 = double.parse(nun1!);
  double? val2 = double.parse(nun2!);

  stdout.write('Resultado: ');
  switch (op) {
    case '+':
      print(val1 + val2);
      break;

    case '-':
      print(val1 - val2);
      break;

    case '*':
      print(val1 * val2);
      break;

    case '/':
      print(val1 / val2);
      break;

    default:
      print('Operação inválida!');
  }
}
