import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trainer.g.dart';

@JsonSerializable()
class Trainer with ChangeNotifier {
  bool? onboarding;
  String? id;
  List<String>? certifications;
  String? city;
  String? description;
  List<String>? disciplines;
  String? email;
  bool? freeTrial;
  String? gymAddress;
  bool? insurance;
  bool? laurea;
  num? maxPrice;
  num? minPrice;
  String? firstName;
  List<String>? goals;
  String? startedYear;
  String? lastName;
  List<String>? trainingMode;
  bool? vat;
  List<String>? ypStudios;

  Trainer(
      {this.id,
      this.onboarding,
      this.certifications,
      this.city,
      this.description,
      this.disciplines,
      this.email,
      this.freeTrial,
      this.goals,
      this.gymAddress,
      this.insurance,
      this.laurea,
      this.maxPrice,
      this.minPrice,
      this.firstName,
      this.startedYear,
      this.lastName,
      this.trainingMode,
      this.vat,
      this.ypStudios});

  factory Trainer.fromJson(Map<String, dynamic> json) =>
      _$TrainerFromJson(json);

  Map<String, dynamic> toJson() => _$TrainerToJson(this);
}
