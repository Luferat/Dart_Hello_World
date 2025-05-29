/*
Exercício 4: Decodificando um Mapa com uma Lista

Dada a seguinte string JSON:

```json
{
  "nome": "João",
  "cursos": ["Dart", "Flutter", "JavaScript"]
}
```

Escreva um programa Dart que:
 - Declare uma variável String contendo o JSON acima.
 - Utilize a função jsonDecode() para converter a string JSON em um Map<String, dynamic>.
 - Imprima o nome da pessoa.
 - Imprima a lista de cursos.
 - Imprima o segundo curso da lista.
*/

import 'dart:convert';

void main() {
  String jsonString = '''
  {
    "nome": "João",
    "cursos": ["Dart", "Flutter", "JavaScript"]
  }
  ''';

  Map<String, dynamic> mapa = jsonDecode(jsonString);

  print('Nome: ${mapa['nome']}');
  print('Cursos: ${mapa['cursos']}');
  print('Segundo curso: ${mapa['cursos'][1]}');
}
