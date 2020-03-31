import 'package:json_annotation/json_annotation.dart';
import 'package:jsonexample/models/geo.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  toJson() => _$AddressToJson(this);
}
