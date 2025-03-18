class Iptu{
  double _metroquadrado = 0;
  
  double get metroquadrado => _metroquadrado;
  set metroquadrado(double novometroquadrado) => _metroquadrado = novometroquadrado;
  
  // metodo para definir quanto de iptu ira pagar de acordo com o metro quadrado
  String definirIptu(){
    if(this._metroquadrado==0){
      return "300";
    }else if(this._metroquadrado<=50){
      return "500";
    } else if(this._metroquadrado>=51 && this._metroquadrado<=100){
      return "800";
    } else if(this._metroquadrado>=101 && this._metroquadrado<=200){
      return "1200";
    } else{
      return "2000";
    }
  }
}
  
void main(){
  var iptu = Iptu();
  
  iptu.definirIptu();
  iptu._metroquadrado = 30;
  
  print("O seu imóvel mede ${iptu._metroquadrado} metros quadrados.");
  print("E o IPTU dele é ${iptu.definirIptu()} reais.");
}
