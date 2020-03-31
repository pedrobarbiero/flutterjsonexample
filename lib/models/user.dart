import 'package:json_annotation/json_annotation.dart';
import 'package:jsonexample/models/address.dart';
import 'package:jsonexample/models/company.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;
  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  toJson() => _$UserToJson(this);
}
