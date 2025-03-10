//ano atual - o ano informado par ter a idade

class CalcularIdade {
  int _anoatual = 0, _ano = 0, _idade = 0;
  
  //Getter 
  int get anoatual => _anoatual;
  //Setter 
  set anoatual(int novoAtual) => _anoatual = novoAtual;
  
  //Getter
  int get ano => _ano;
  //Setter 
  set ano(int novoAno) => _ano = novoAno;
  
  //Getter
  int get idade => _idade;
  
  void calculoIdade(){
    this._idade = this._anoatual - this._ano;
  }
}

void main() {
  var calculo = CalcularIdade();
  
  calculo.ano = 1993;
  calculo.anoatual=2025;
  calculo.calculoIdade();
  print("O ano atual é:${calculo.ano}");
  print("Sua idade é:${calculo.idade}");
}