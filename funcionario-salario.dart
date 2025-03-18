abstract class Funcionario {
  double salario();
}

class Gerente extends Funcionario {
  double valorPorHora; 
  double horasTrabalhadas; 
  
  Gerente(this.valorPorHora, this.horasTrabalhadas);
  
  @override
  double salario() {
    // Aqui tem o bonus que o gerente recebe
    double salarioBase = valorPorHora * horasTrabalhadas;
    double bonus = salarioBase * 0.10;
    return salarioBase + bonus;
  }
}

class Assistente extends Funcionario {
  double valorPorHora; 
  double horasTrabalhadas; 
  
  Assistente(this.valorPorHora, this.horasTrabalhadas);
  
  @override
  double salario() {
    // O assistente recebe o salário base sem bônus
    return valorPorHora * horasTrabalhadas;
  }
}

void main() {
  // gerente que ganha R$ 50 por hora e trabalhou 160 horas no mês
  Funcionario gerente = Gerente(50, 160);
  
  // assistente que ganha R$ 30 por hora e trabalhou 160 horas no mês
  Funcionario assistente = Assistente(30, 160);
  
  
  print("Salário do Gerente: R\$ ${gerente.salario().toStringAsFixed(2)}"); 
  print("Salário do Assistente: R\$ ${assistente.salario().toStringAsFixed(2)}"); 
}