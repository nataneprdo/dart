abstract class Produto {
  double precofinal();
}

class ProdutoFisico extends Produto {
  double preco;
  double entregaFisico;
  
  ProdutoFisico(this.preco, this.entregaFisico);
  
  @override
  double precofinal(){
    double valortotal = preco + entregaFisico;
    return valortotal;
  }
}

class ProdutoDigital extends Produto{
  double preco;
  double entregaDigital;
  
  ProdutoDigital(this.preco, this.entregaDigital);
  
  @override
  double precofinal(){
    double totaldigital = preco + entregaDigital;
    return totaldigital;
  }
}

void main() {
  Produto produtofisico = ProdutoFisico(1000, 20);
  
  Produto produtodigital = ProdutoDigital(300, 10);
  
  print("Valor produto fisico mais a entrega: ${produtofisico.precofinal()}");
  print("Valor produto digital mais a entrega: ${produtodigital.precofinal()}");
}
