abstract class Notificacao {
  void enviar();
}

class Email extends Notificacao {
  String destinatario;
  String mensagem;
  
  Email(this.destinatario, this.mensagem);
  
  @override
  void enviar() {
    print("Enviando email para ${destinatario}");
    print("Mensagem: ${mensagem}");
    print("Enviado com sucesso!");
  }
}

class SMS extends Notificacao {
  String numero;
  String texto;
  
  SMS(this.numero, this.texto);
  
  void enviar() {
    print("Enviando mensagem para o número ${numero}");
    print("Mensagem: ${texto}");
    print("Enviado com sucesso");
  }
}

void main() {
  Notificacao email = Email("usuario@exemplo.com", "Olá, tudo bem?");
  email.enviar();
  Notificacao sms = SMS("120000000","Olá, tudo bem?");
  sms.enviar();
}
