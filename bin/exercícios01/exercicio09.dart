/*
Exercício 09) Inverter uma String:
Escreva uma função chamada inverterString que aceite uma string como argumento e retorne a string invertida.
No programa principal, peça ao usuário para digitar uma palavra ou frase e utilize a função inverterString para imprimir o resultado invertido.
*/

import 'dart:io';

String inverterString(String word) {
  return word.split('').reversed.join();
}

void main() {
  stdout.write('Digite uma palavra: ');
  String? word = stdin.readLineSync();
  print("Invertida: ${inverterString(word!)}");
}
