/// 表示当前天气状况的类。

class WeatherDataCurrent {
  final Current current;
  WeatherDataCurrent({required this.current});

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) => WeatherDataCurrent(current: Current.fromJson(json["current"]));
}

class Current {
  /// 上次更新的时间，以epoch时间戳形式表示。
  int? lastUpdatedEpoch;

  /// 上次更新的时间，以字符串形式表示。
  String? lastUpdated;

  /// 当前温度，单位为摄氏度。
  double? tempC;

  /// 标记是否为白天。
  int? isDay;

  /// 风速，单位为英里/小时。
  double? windMph;

  /// 风速，单位为公里/小时。
  double? windKph;

  /// 风向角度。
  int? windDegree;

  /// 风向。
  String? windDir;

  /// 气压，单位为毫巴。
  int? pressureMb;

  /// 气压，单位为英寸。
  double? pressureIn;

  /// 降水量，单位为毫米。
  int? precipMm;

  /// 降水量，单位为英寸。
  int? precipIn;

  /// 湿度百分比。
  int? humidity;

  /// 云量百分比。
  int? cloud;

  /// 感觉温度，单位为摄氏度。
  double? feelslikeC;

  /// 感觉温度，单位为华氏度。
  double? feelslikeF;

  /// 风寒指数，单位为摄氏度。
  double? windchillC;

  /// 风寒指数，单位为华氏度。
  double? windchillF;

  /// 热指数，单位为摄氏度。
  double? heatindexC;

  /// 热指数，单位为华氏度。
  double? heatindexF;

  /// 露点温度，单位为摄氏度。
  double? dewpointC;

  /// 露点温度，单位为华氏度。
  double? dewpointF;

  /// 能见度，单位为公里。
  int? visKm;

  /// 能见度，单位为英里。
  int? visMiles;

  /// UV指数。
  int? uv;

  /// 风速峰值，单位为英里/小时。
  double? gustMph;

  /// 风速峰值，单位为公里/小时。
  double? gustKph;

  /// 创建一个Current实例。
  Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
    this.tempC,
    this.isDay,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  /// 从JSON对象创建一个Current实例。
  factory Current.fromJson(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json['last_updated_epoch'] as int?,
        lastUpdated: json['last_updated'] as String?,
        tempC: (json['temp_c'] as num?)?.toDouble(),
        isDay: json['is_day'] as int?,
        windMph: (json['wind_mph'] as num?)?.toDouble(),
        windKph: (json['wind_kph'] as num?)?.toDouble(),
        windDegree: json['wind_degree'] as int?,
        windDir: json['wind_dir'] as String?,
        pressureMb: json['pressure_mb'] as int?,
        pressureIn: (json['pressure_in'] as num?)?.toDouble(),
        precipMm: json['precip_mm'] as int?,
        precipIn: json['precip_in'] as int?,
        humidity: json['humidity'] as int?,
        cloud: json['cloud'] as int?,
        feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
        feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
        windchillC: (json['windchill_c'] as num?)?.toDouble(),
        windchillF: (json['windchill_f'] as num?)?.toDouble(),
        heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
        heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
        dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
        dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
        visKm: json['vis_km'] as int?,
        visMiles: json['vis_miles'] as int?,
        uv: json['uv'] as int?,
        gustMph: (json['gust_mph'] as num?)?.toDouble(),
        gustKph: (json['gust_kph'] as num?)?.toDouble(),
      );

  /// 将Current实例转换为JSON对象。
  Map<String, dynamic> toJson() => {
        'last_updated_epoch': lastUpdatedEpoch,
        'last_updated': lastUpdated,
        'temp_c': tempC,
        'is_day': isDay,
        'wind_mph': windMph,
        'wind_kph': windKph,
        'wind_degree': windDegree,
        'wind_dir': windDir,
        'pressure_mb': pressureMb,
        'pressure_in': pressureIn,
        'precip_mm': precipMm,
        'precip_in': precipIn,
        'humidity': humidity,
        'cloud': cloud,
        'feelslike_c': feelslikeC,
        'feelslike_f': feelslikeF,
        'windchill_c': windchillC,
        'windchill_f': windchillF,
        'heatindex_c': heatindexC,
        'heatindex_f': heatindexF,
        'dewpoint_c': dewpointC,
        'dewpoint_f': dewpointF,
        'vis_km': visKm,
        'vis_miles': visMiles,
        'uv': uv,
        'gust_mph': gustMph,
        'gust_kph': gustKph,
      };
}
