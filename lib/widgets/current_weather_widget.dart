import 'package:flutter/cupertino.dart';

import '../model/weather_data_current.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherDataCurrent weatherDataCurrent;
  const CurrentWeatherWidget({super.key, required this.weatherDataCurrent});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Text("${weatherDataCurrent.current.humidity}"),
    );
  }
}
