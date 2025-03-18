abstract class Produto {
  double calcularDesconto();
}

class ProdutoEletronico extends Produto {
  double valorEletronico;
  double descontoEletronico;
  
  ProdutoEletronico(this.valorEletronico, this.descontoEletronico);
  
  @override
  double calcularDesconto(){
    double valorDesconto = (descontoEletronico / 100) * valorEletronico;
    double valorFinal = valorEletronico - valorDesconto;
    return valorFinal;
  }
}

class ProdutoVestuario extends Produto {
  double valorVestuario;
  double descontoVestuario;
  
  ProdutoVestuario(this.valorVestuario, this.descontoVestuario);
  
  @override
  double calcularDesconto(){
    double valorFinal = valorVestuario - descontoVestuario;
    return valorFinal;
  }
}

void main (){
  Produto produtoEletronico = ProdutoEletronico(100, 90); // aqui em %
  Produto produtoVestuario = ProdutoVestuario(50, 5); // aqui R$5,00 de desconto
  
  print("O valor do produto eletronico com o desconto fica: ${produtoEletronico.calcularDesconto()}");
  print("O valor do produto vestuário com o desconto fica: ${produtoVestuario.calcularDesconto()}");
}
