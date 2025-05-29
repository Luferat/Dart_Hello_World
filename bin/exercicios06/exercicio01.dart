/*
Exercício 1: Decodificando um Mapa Simples

Dada a seguinte string JSON:

```json
{
"nome": "Maria",
"idade": 25
}
```

Escreva um programa Dart que:
 - Declare uma variável String contendo o JSON acima.
 - Utilize a função jsonDecode() para converter a string JSON em um Map<String, dynamic>.
 - Imprima o valor da chave "nome" do mapa resultante.
 - Imprima o valor da chave "idade" do mapa resultante.
*/

import 'dart:convert';

void main() {
  String jsonString = '{"nome": "Maria", "idade": 25}';

  Map<String, dynamic> mapa = jsonDecode(jsonString);

  print('Nome: ${mapa['nome']}');
  print('Idade: ${mapa['idade']}');
}
