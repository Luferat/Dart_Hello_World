/*
Exercício 4: A Classe Conta Bancária (Encapsulamento)

Crie uma classe chamada ContaBancaria com os seguintes atributos:
 - _saldo (double - lembre-se do _ para indicar privacidade dentro da biblioteca).

Adicione um construtor que inicialize o _saldo com o valor zero.
Crie os seguintes métodos:
 - depositar(double valor): Adiciona o valor ao _saldo.
 - sacar(double valor): Remove o valor do _saldo (adicione uma verificação para garantir que o saldo não fique negativo).
 - getSaldo(): Retorna o valor atual do _saldo.

No método main(), crie uma instância de ContaBancaria, faça alguns depósitos e saques, e imprima o saldo final utilizando o método getSaldo(). Tente acessar o atributo _saldo diretamente fora da classe para observar o comportamento.
*/

class ContaBancaria {
  double _saldo;

  ContaBancaria() : _saldo = 0.0;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente ou valor inválido!');
    }
  }

  double getSaldo() {
    return _saldo;
  }
}

void main() {
  var conta = ContaBancaria();

  conta.depositar(1000);
  conta.sacar(300);
  conta.depositar(200);
  conta.sacar(1500); // tentativa de saque acima do saldo

  print('Saldo final: ${conta.getSaldo()}');

  // Tentar acessar diretamente
  // print(conta._saldo); // Descomente esta linha para ver o erro de acesso
}
