import 'dart:io';
import 'package:prompts/prompts.dart' as prompts;

// Base de dados
List<Map<String, dynamic>> tarefas = [];

// Função para adicionar uma tarefa
void adicionarTarefa(String descricao) {
  tarefas.add({'descricao': descricao, 'concluida': false});
  stdout.writeln('Tarefa "$descricao" adicionada.\n');
}

// Função para remover tarefa
void removerTarefa(int indice) {
  if (indice >= 0 && indice < tarefas.length) {
    String descricaoRemovida = tarefas[indice]['descricao']; // Guarda a descrição para exibir no `print()`
    tarefas.removeAt(indice);
    stdout.writeln('Tarefa "$descricaoRemovida" removida.');
  } else {
    stdout.writeln('Índice inválido.');
  }
}

// Função para marcar uma tarefa como concluída
void marcarConcluida(int indice) {
  if (indice >= 0 && indice < tarefas.length) {
    tarefas[indice]['concluida'] = true;
    stdout.writeln('Tarefa "${tarefas[indice]['descricao']}" marcada como concluída.');
  } else {
    stdout.writeln('Índice inválido.');
  }
}

// Função para listar todas as tarefas
void listarTarefas() {
  if (tarefas.isEmpty) {
    stdout.writeln('Sua lista de tarefas está vazia.');
    return;
  }
  print('\n--- Lista de Tarefas ---');
  for (var i = 0; i < tarefas.length; i++) {
    var tarefa = tarefas[i];
    var status = tarefa['concluida'] ? '[x]' : '[ ]';
    stdout.writeln('${i + 1}. $status ${tarefa['descricao']}');
  }
  stdout.writeln('------------------------\n');
}

// main() loop - Criar a Interface de Usuário no Terminal

void main() {
  while (true) {
    stdout.writeln('Escolha uma ação:');
    stdout.writeln('1. Adicionar tarefa');
    stdout.writeln('2. Listar tarefas');
    stdout.writeln('3. Marcar tarefa como concluída');
    stdout.writeln('4. Remover tarefa');
    stdout.writeln('5. Sair');

    stdout.write("\n> ");
    String? escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        stdout.write('Digite a descrição da tarefa: ');
        var descricao = stdin.readLineSync();
        if (descricao != null && descricao.isNotEmpty) {
          adicionarTarefa(descricao);
        } else {
          stdout.writeln('A descrição da tarefa não pode ser vazia.');
        }
        break;
      case '2':
        listarTarefas();
        break;
      case '3':
        listarTarefas();
        stdout.write('Digite o número da tarefa para marcar como concluída: ');
        String? indiceStr = stdin.readLineSync();
        if (indiceStr != null && int.tryParse(indiceStr) != null) {
          marcarConcluida(int.parse(indiceStr) - 1);
        } else {
          stdout.writeln('Entrada inválida.');
        }
        break;
      case '4':
        listarTarefas();
        stdout.write('Digite o número da tarefa para remover: ');
        String? indiceRemoverStr = stdin.readLineSync();
        if (indiceRemoverStr != null && int.tryParse(indiceRemoverStr) != null) {
          removerTarefa(int.parse(indiceRemoverStr) - 1);
        } else {
          stdout.writeln('Entrada inválida.');
        }
        break;
      case '5':
        stdout.writeln('Saindo do aplicativo.');
        return;
      default:
        stdout.writeln('Opção inválida.');
    }
  }
}