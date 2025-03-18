abstract class ContaBancaria {
  double calcularjuros();
}

class ContaCorrente extends ContaBancaria {
  double valor;
  double juros;
  
  ContaCorrente (this.valor, this.juros);
  @override
  double calcularjuros(){
    double valorfinal = valor + juros;
    return valorfinal;
  }
}

class ContaPoupanca extends ContaBancaria {
  double valor;
  double juros;
  
  ContaPoupanca (this.juros, this.valor);
  @override
  double calcularjuros(){
    double valorfinal = valor + juros;
    return valorfinal;
  }
}

void main(){
  ContaBancaria corrente = ContaCorrente(1000, 0);
  ContaBancaria poupanca = ContaPoupanca(1000, 30);
  
  print("Na conta corrente com juros o valor final é ${corrente.calcularjuros()}");
  print("Na conta poupança com juros o valor final é ${poupanca.calcularjuros()}");
}
