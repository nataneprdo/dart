class Imc {
  double _peso = 0;
  double _altura = 0;
  double _resultado = 0;
  
   // Getter peso
  double get peso => _peso;
  // Setter peso
  set peso(double newPeso) => _peso = newPeso;
  
  // Getter altura
  double get altura => _altura;
  // Setter altura
  set altura(double newAltura) => _altura = newAltura;
  
  // Getter resultado
  double get resultado => _resultado;
  // Setter resultado
  set resultado(double newResultado) => _resultado = newResultado;
  
  
  // METODOS
  // esse metodo é para calcular o imc e ter a resposta
  void calcularImc(){
    this._resultado = this._peso / (this._altura*this._altura);
  }
  
// string, pela resposta que não é somente UM numero e sim numero que pode variar o que mais se aproxima é string
  String resultadoImc(){
     if (this._resultado < 18.5){
      return "Abaixo do peso";
    }else if (this._resultado <= 24.9){
      return "Peso Normal";
     }else if(this._resultado <= 29.9){
       return "Sobrepeso";
     }else if(this._resultado >= 30){
      return "Obesidade";
     }else{
       return "Dados não válidos";
     }
  }
}
  

void main(){
  var imc = Imc();
  
  imc.peso = 72;
  imc.altura = 1.58;
  imc.resultado = 0;
  imc.calcularImc();
  imc.resultadoImc();
  
  print("O seu peso é ${imc.peso} Kg.");
  print("A sua altura é ${imc.altura} metros.");
  // .toStringAsFixed(2) é usado para deixar somente 2 numeros após a virgula
  print("O seu IMC deu: ${imc.resultado.toStringAsFixed(2)}");
  print("Sua classificação foi: ${imc.resultadoImc()}");
  // aqui retorna o método para saber qual classificação de acordo com o resultado do IMC
}