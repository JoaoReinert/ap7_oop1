class ContaBancaria {
  double saldo;
  String titular;

  ContaBancaria(this.saldo, this.titular);

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo = saldo - valor;
    } else {
      print("saldo insuficiente");
    }
  }

  void depositar(double valor) {
    saldo = saldo + valor;
  }
}

void main() {
  var contaTotal = ContaBancaria(100, "João");

  contaTotal.sacar(10);
  contaTotal.depositar(0);

  print("Saldo atual: ${contaTotal.saldo}");
}
