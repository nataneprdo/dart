abstract class Animal {
  void alimentar();
}

class Leao extends Animal {
  String alimentoLeao;
  
  Leao(this.alimentoLeao);
  
  @override
  void alimentar() {
    print("O alimento do Leão é: ${alimentoLeao}");
  }
}

class Zebra extends Animal {
  String alimentoZebra;
  
  Zebra(this.alimentoZebra);
  
  @override
  void alimentar(){
    print("O alimento da Zebra é: ${alimentoZebra}");
  }
}

void main(){
  Animal leao = Leao("Carne");
  leao.alimentar();
  Animal zebra = Zebra("Folhas");
  zebra.alimentar();
}