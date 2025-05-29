/*
Exercício 3: Codificando um Mapa Simples

Dado o seguinte mapa Dart:

```dart
final carro = {
  'marca': 'Fiat',
  'modelo': 'Uno',
  'ano': 2020,
};
```

Escreva um programa Dart que:
 - Declare o mapa carro como mostrado acima.
 - Utilize a função jsonEncode() para converter o mapa em uma string JSON.
 - Imprima a string JSON resultante.
*/

import 'dart:convert';

void main() {
  final carro = {
    'marca': 'Fiat',
    'modelo': 'Uno',
    'ano': 2020,
  };

  String jsonString = jsonEncode(carro);

  print('JSON: $jsonString');
}
