import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainer_models/src/helpers/utils.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
  String? email;
  String? firstName;
  String? lastName;
  String id;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime? createdAt;

  Customer(
      {this.email,
      this.firstName,
      this.lastName,
      this.createdAt,
      required this.id});

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
