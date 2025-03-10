//CLASSE ABSTRATA

// Definição da classe abstrata
abstract class Forma {
  // Método abstrato (sem implementação)
  void desenhar();
  
  // Método concreto (com implementação)
  double calcularArea();
  
  
}


// Subclasse concreta que estende a classe abstrata
class Circulo extends Forma {
  double raio;

  Circulo(this.raio);
  @override
  void desenhar() {
    print("Desenhando um círculo com raio $raio.");
  }
  
  @override
  double calcularArea(){
    return (raio * raio) * 3.14;
  }
}


// Outra subclasse concreta que estende a classe abstrata

class Retangulo extends Forma {
  double comprimento;
  double altura;
  Retangulo(this.comprimento, this.altura);
  @override
  void desenhar() {
    print("Desenhando retângulo com largura $comprimento e altura $altura.");
  }
  
    @override
  double calcularArea(){
    return comprimento * altura;
    
  }

}


void main() {

  // Criando instâncias das subclasses

  Forma circulo = Circulo(5.0);
  Forma retangulo = Retangulo(10.0, 20.0);
  
  // Chamando métodos
  circulo.desenhar(); // "Desenhando um círculo com raio 5.0."
  print(circulo.calcularArea().toStringAsFixed(2));     // "Calculando a área."
  retangulo.desenhar(); // "Desenhando um retângulo com largura 10.0 e altura 20.0."

  retangulo.calcularArea();     // "Calculando a área."
   print(retangulo.calcularArea());
}
