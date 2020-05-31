class WeatherForecast {
  final int dia;
  final String fecha;
  final String clima;
  final bool picoDeLluvia;

  WeatherForecast({this.dia, this.fecha, this.clima, this.picoDeLluvia});

  factory WeatherForecast.fromJson(Map<String, dynamic> json) {
    return new WeatherForecast(
        dia: json['dia'],
        fecha: json['fecha'],
        clima: json['clima'],
        picoDeLluvia: json['picoDeLluvia']);
  }
}
