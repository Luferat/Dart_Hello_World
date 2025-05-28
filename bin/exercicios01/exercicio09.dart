/*
Inverter uma String:
 - Escreva uma função chamada inverterString que aceite uma string como argumento e retorne a string invertida.
 - No programa principal, peça ao usuário para digitar uma palavra ou frase e utilize a função inverterString para imprimir o resultado invertido.
*/

import 'dart:io';

String inverterString(String word) {
  return word.split('').reversed.join();
}

void main() {
  stdout.write('Digite uma palavra: ');
  String? word = stdin.readLineSync();

  print(' 1 → ${word}'); // Obtém String
  print(' 2 → ${word?.split('')}'); // Transforma em List
  print(' 3 → ${word?.split('').reversed}'); // Inverte ordem da List
  print(' 4 → ${word?.split('').reversed.join()}'); // Junta elementos da List obtendo String

  print("Invertida: ${inverterString(word!)}");
}
