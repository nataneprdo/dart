//Calcular o valor de um produto em função da quantidade solicitada.

class Calcular {
  double _valor = 0, _valorproduto = 0;
  int _quantidade = 0;
  
  //Getter
  int get quantidade => _quantidade;
  //Setter
  set quantidade(int newQuantidade) => _quantidade = newQuantidade;
  
  //Getter
  double get valor => _valor;
  //Setter
  set valor(double newValor) => _valor = newValor;

  //Setter
  set valorproduto(double newValorProduto) => _valorproduto = newValorProduto;
  
  //metodo para calcular a venda
  
  void calcularvenda(){
    this._valorproduto = this._quantidade * _valor;
  }
  
}


void main (){
  var total = Calcular();
  
  total._valor = 10;
  total._quantidade = 2;
  total.calcularvenda();
  print("O valor para 2 produtos é: ${total._valorproduto}");
}
