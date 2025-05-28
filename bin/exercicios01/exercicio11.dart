/*
Tabuada:
 - Crie um aplicativo que exiba a tabuada de um número no terminal.
 - O número deve ser um inteiro fornecido pelo usuário.
*/

import 'dart:io';

void main(){

  stdout.write("Digite um número inteiro para ver a tabuada: ");
  String? strNum = stdin.readLineSync();
  int num = int.parse(strNum!);

  for (int i = 1; i <= 10; i++){
    print('${num} x ${i} = ${num * i}');
  }
}