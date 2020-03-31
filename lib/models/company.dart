import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  String name;
  String catchPhrase;
  String bs;

  Company();
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  toJson() => _$CompanyToJson(this);
}
