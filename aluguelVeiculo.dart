abstract class Veiculo {
  double calcularAluguel();
}

class Carro extends Veiculo {
  double valorDia;
  int quantDias;
  
  Carro(this.valorDia, this.quantDias);
  
  @override
  double calcularAluguel(){
    double aluguelCarro = valorDia * quantDias;
    return aluguelCarro;
  }
 }

class Moto extends Veiculo{
  double valorDia;
  int quantDias;
  
  Moto(this.valorDia, this.quantDias);
  
  @override
  double calcularAluguel(){
    double alguelMoto = valorDia * quantDias;
    return alguelMoto;
  }
}

void main(){
  Veiculo aluguelcarro = Carro(300, 5);
  Veiculo aluguelmoto = Moto(150, 5);
  
  print("O valor do aluguel do carro por 5 dias é: ${aluguelcarro.calcularAluguel()}");
  print("O valor do aluguel da moto por 5 dias é: ${aluguelmoto.calcularAluguel()}");
}
         