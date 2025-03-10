//Calcular o salário final a receber de um funcionário, adicionado as horas extras e deduzido as horas que faltou no mês, O funcionário trabalho normalmente 30 dias por mês e 8 horas por dia. Permitir mostrar o salário sem desconto ou acréscimos, o salário com desconto e acréscimo, somente o valor de desconto, somente o valor de acréscimo.

                
class CalcularSalario {
  double _salarioBase = 0, _salarioHora = 0, _horaExtra = 0, _valorDescontoFalta = 0, _salarioDesconto = 0, _valorHoraExtra = 0, _salarioAcrescimo = 0;
  int _faltas = 0;
  
  // Getter
  double get salarioBase => _salarioBase;
  //Setter
  set salarioBase( double newSalarioBase) => _salarioBase = newSalarioBase;
  
  // Getter
  double get salarioHora => _salarioHora;
  
  // Getter
  double get horaExtra => _horaExtra;
  // Setter
  set horaExtra(double newHoraExtra) => _horaExtra = newHoraExtra;
  
  //Getter
  double get valorDescontoFalta => _valorDescontoFalta;
  
  //Getter
  double get salarioDesconto => _salarioDesconto;
  
  // Getter
  double get valorHoraExtra => _valorHoraExtra;
  
  //Getter
  double get salarioAcrescimo => _salarioAcrescimo;
  
  //Getter
  int get faltas => _faltas;
  //Setter
  set faltas(int newFaltas) => _faltas = newFaltas;
  
  void calculoSalarioHora(){
    this._salarioHora = this._salarioBase / 240;
  }
  
  void calculoValorDescontoFalta(){
    this._valorDescontoFalta = (this._faltas * 8) - this._salarioHora;
  }
  
  void calculoSalarioDesconto(){
    this._salarioDesconto = this._salarioBase - this._valorDescontoFalta;
  }
  
  void calculoValorExtra(){
    this._valorHoraExtra = this._salarioHora + (this._salarioHora / 2);
  }
  
  void calculoSalarioAcrescimo(){
    this._salarioAcrescimo = this._salarioBase + this._valorHoraExtra;
  }
}


void main(){
  var contabilidade = CalcularSalario();
  
  contabilidade._salarioBase = 1000;
  contabilidade._faltas = 2;
  contabilidade._horaExtra = 2;
  
  contabilidade.calculoSalarioHora();
  print("Valor salário hora é: ${contabilidade._salarioHora.toStringAsFixed(2)}");
  
  contabilidade.calculoValorDescontoFalta();
  print("Valor de desconto da falta é: ${contabilidade._valorDescontoFalta.toStringAsFixed(2)}");
  
  contabilidade.calculoSalarioDesconto();
  print("Valor do salário com desconto é: ${contabilidade._salarioDesconto.toStringAsFixed(2)}");
  
  contabilidade.calculoValorExtra();
  print("Valor da hora extra é: ${contabilidade._valorHoraExtra.toStringAsFixed(2)}");
  
  contabilidade.calculoSalarioAcrescimo();
  print("Valor do salário mais os acréscimos é: ${contabilidade._salarioAcrescimo.toStringAsFixed(2)}");
  
}
