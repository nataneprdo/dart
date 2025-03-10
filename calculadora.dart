class Calculadora {
  double _n1=0, _n2=0, _r=0;

  // Getter
  double get n1 => _n1;
  // Setter
  set n1(double novoN1) => _n1 = novoN1;

  // Getter
  double get n2 => _n2;
  // Setter
  set n2(double novoN2) => _n2 = novoN2;
  
  // Getter
  double get r => _r;
  

  //soma
  void soma(){
    this._r = this._n1 + this._n2;
  }
  
  //subtração
  void subtracao(){
    this._r = this._n2 - this._n1;
  }
  //multiplicação
  void multiplicacao(){
    this._r = this._n1 * this._n2;
  }
  //divisão
  void divisao(){
    if (this._n2 != 0){
      this._r = this._n1 / this._n2;
    } else {
      print("Erro, não é permitido esse tipo de divisão");
    }
    
  }
  
}
0
void main() {
  var calculadora = Calculadora();
  
  
  calculadora.n1 = 0;
  calculadora.n2 = 0;
  calculadora.soma();
  print("Primeiro número:${calculadora.n1}");
  print("Primeiro número:${calculadora.n2}");
  print("----------------------------------");
  print("Resposta da soma: ${calculadora.r}");
  calculadora.subtracao();
  print("Resposta da subtração: ${calculadora.r}");
  calculadora.multiplicacao();
  print("Resposta da multiplicação: ${calculadora.r}");
  calculadora.divisao();
  print("Resposta da divisão: ${calculadora.r}");
 
}