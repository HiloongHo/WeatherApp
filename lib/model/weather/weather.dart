import 'current.dart';
import 'location.dart';

class Weather {
  Location? location;
  Current? current;

  Weather({this.location, this.current});

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        location: json['location'] == null
            ? null
            : Location.fromJson(json['location'] as Map<String, dynamic>),
        current: json['current'] == null
            ? null
            : Current.fromJson(json['current'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
      };
}
