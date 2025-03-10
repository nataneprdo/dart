class Converter {
  double _hours = 0, _minutes = 0, _seconds = 0, _result = 0;

  //Getter
  double get hours => _hours;
  //Setter
  set hours(double newHour) => _hours = newHour;

  //Getter
  double get minutes => _minutes;
  //Setter
  set minutes(double newMinute) => _minutes = newMinute;

  //Getter
  double get seconds => _seconds;
  //Setter
  set seconds(double newSeconds) => _seconds = newSeconds;

  //Getter
  double get result => _result;

  void conversorminutes() {
    this._result = this._hours * 60;
  }

  void conversorseconds() {
    this._result = (this._hours * 60) * 60;
  }
}

void main() {
  var conversor = Converter();

  conversor.hours = 2;
  conversor.conversorminutes();
  print("Valor das horas: ${conversor.hours}");
  print("Convertendo as horas em minutos fica:${conversor.result}");

  conversor.conversorseconds();
  print("Valor das horas: ${conversor.hours}");
  print("Convertendo as horas em segundos fica:${conversor.result}");
}
