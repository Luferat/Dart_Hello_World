/*
Exercício 2: Decodificando uma Lista Simples

Dada a seguinte string JSON:

```json
["maçã", "banana", "laranja"]
```

Escreva um programa Dart que:
 - Declare uma variável String contendo o JSON acima.
 - Utilize a função jsonDecode() para converter a string JSON em uma List<dynamic>.
 - Imprima o primeiro elemento da lista.
 - Imprima o último elemento da lista.
*/

import 'dart:convert';
void main() {
  String jsonString = '["maçã", "banana", "laranja"]';

  List<dynamic> lista = jsonDecode(jsonString);

  print('Primeiro elemento: ${lista.first}');
  print('Último elemento: ${lista.last}');
}
