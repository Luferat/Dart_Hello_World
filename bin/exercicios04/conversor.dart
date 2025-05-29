/**
 * Conversor de Moedas Simples
 */

import 'dart:io'; // Necessário para entrada/saída do console

// Constantes para as taxas de câmbio (valores fictícios para o exemplo)
const double TAXA_BRL_USD = 0.19; // 1 BRL = 0.19 USD
const double TAXA_BRL_EUR = 0.17; // 1 BRL = 0.17 EUR

void main() {
  print('--- Conversor de Moedas Simples ---');

  while (true) {
    print('\nOpções de Conversão:');
    print('1. BRL para USD (Dólar Americano)');
    print('2. BRL para EUR (Euro)');
    print('3. Sair');
    print('Escolha uma opção (1, 2 ou 3):');

    String? escolhaStr = stdin.readLineSync(); // Lê a entrada do usuário

    if (escolhaStr == '3') {
      print('Saindo do conversor. Até mais!');
      break; // Sai do loop
    }

    if (escolhaStr != '1' && escolhaStr != '2') {
      print('Opção inválida. Por favor, escolha 1, 2 ou 3.');
      continue; // Volta para o início do loop
    }

    print('Digite o valor em BRL (Reais Brasileiros) para converter:');
    String? valorBRLStr = stdin.readLineSync();
    double? valorBRL = double.tryParse(valorBRLStr ?? ''); // Tenta converter para double

    if (valorBRL == null || valorBRL < 0) {
      print('Valor inválido. Por favor, digite um número positivo.');
      continue; // Volta para o início do loop
    }

    converterMoeda(valorBRL, escolhaStr!);
  }
}

// Função para realizar a conversão com base na escolha do usuário
void converterMoeda(double valorBRL, String tipoConversao) {
  double valorConvertido;
  String moedaDestino;

  switch (tipoConversao) {
    case '1':
      valorConvertido = valorBRL * TAXA_BRL_USD;
      moedaDestino = 'USD';
      break;
    case '2':
      valorConvertido = valorBRL * TAXA_BRL_EUR;
      moedaDestino = 'EUR';
      break;
    default: // Isso não deve acontecer devido à validação anterior, mas é bom ter.
      print('Erro interno na conversão.');
      return;
  }

  // Formatando para 2 casas decimais para moedas
  print('R\$ ${valorBRL.toStringAsFixed(2)} equivalem a $moedaDestino ${valorConvertido.toStringAsFixed(2)}.');
}