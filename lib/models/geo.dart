import 'package:json_annotation/json_annotation.dart';
part 'geo.g.dart';

@JsonSerializable()
class Geo {
  String lat;
  String lng;
  Geo();

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
  toJson() => _$GeoToJson(this);
}
