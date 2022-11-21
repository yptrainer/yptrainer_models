import 'dart:io';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trainer.g.dart';

@JsonSerializable()
class Trainer with ChangeNotifier {
  String? id;
  bool? booking;
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

  @JsonKey(ignore: true)
  String? phoneNumber = '+39';

  @JsonKey(ignore: true)
  File? profileImg;

  @JsonKey(ignore: true)
  Map<int, File?> gallery = {
    0: null,
    1: null,
    2: null,
    3: null,
    4: null,
    5: null
  };

  Trainer(
      {this.id,
      this.booking,
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

  void fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    booking = json['booking'] as bool?;

    certifications = (json['certifications'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
    city = json['city'] as String?;
    description = json['description'] as String?;
    disciplines = (json['disciplines'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
    email = json['email'] as String?;
    freeTrial = json['freeTrial'] as bool?;
    goals = (json['goals'] as List<dynamic>?)?.map((e) => e as String).toList();
    gymAddress = json['gymAddress'] as String?;
    insurance = json['insurance'] as bool?;
    laurea = json['laurea'] as bool?;
    maxPrice = json['maxPrice'] as int?;
    minPrice = json['minPrice'] as int?;
    firstName = json['firstName'] as String?;
    startedYear = json['startedYear'] as String?;
    lastName = json['lastName'] as String?;
    trainingMode = (json['trainingMode'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
    vat = json['vat'] as bool?;
    ypStudios =
        (json['ypStudios'] as List<dynamic>?)?.map((e) => e as String).toList();
    notifyListeners();
  }

  Map<String, dynamic> toJson() => _$TrainerToJson(this);

  set setYear(String string) {
    startedYear = string;
    notifyListeners();
  }

  set setVat(bool boolean) {
    vat = boolean;
    notifyListeners();
  }

  set setInsurance(bool boolean) {
    insurance = boolean;
    notifyListeners();
  }

  set setCity(String string) {
    city = string;
    notifyListeners();
  }

  set setLaurea(bool boolean) {
    laurea = boolean;
    notifyListeners();
  }

  set addDiscipline(String string) {
    if (disciplines == null) {
      disciplines = [string];
    } else {
      disciplines?.add(string);
    }

    notifyListeners();
  }

  set removeDiscipline(String string) {
    disciplines?.remove(string);
    notifyListeners();
  }

  set addGoal(String string) {
    if (goals == null) {
      goals = [string];
    } else {
      goals?.add(string);
    }

    notifyListeners();
  }

  set removeGoal(String string) {
    goals?.remove(string);
    notifyListeners();
  }

  int get disciplinesCount => disciplines?.length ?? 0;
  int get goalsCount => goals?.length ?? 0;

  set removeCertification(String string) {
    certifications?.remove(string);
    notifyListeners();
  }

  set setDescription(String string) {
    description = string;
    notifyListeners();
  }

  set setProfileImg(File? file) {
    profileImg = file;
    notifyListeners();
  }

  set setGallery(Map<int, File?> map) {
    gallery = map;
    notifyListeners();
  }

  set addStudio(String string) {
    ypStudios == null ? ypStudios = [string] : ypStudios!.add(string);

    notifyListeners();
  }

  void removeStudio(String string) {
    if (ypStudios != null) {
      ypStudios!.remove(string);
    }
    notifyListeners();
  }

  set addTraining(String string) {
    if (trainingMode == null) {
      trainingMode = [string];
    } else {
      trainingMode?.add(string);
    }

    notifyListeners();
  }

  set removeTraining(String string) {
    trainingMode?.remove(string);
    notifyListeners();
  }

  void clearStudio() {
    ypStudios = [];
    notifyListeners();
  }

  set setTrial(bool boolean) {
    freeTrial = boolean;
    notifyListeners();
  }

  set setMinPrice(int int) {
    minPrice = int;
    notifyListeners();
  }

  set setMaxPrice(int int) {
    maxPrice = int;
    notifyListeners();
  }

  set setId(String string) {
    id = string;
    notifyListeners();
  }

  set setEmail(String string) {
    email = string;
    notifyListeners();
  }

  set setNumber(String string) {
    phoneNumber = string;
    notifyListeners();
  }

  void insertGalleryImg(File? file, int index) {
    gallery[index] = file;

    notifyListeners();
  }

  set setFirstName(String string) {
    firstName = string;
    notifyListeners();
  }

  set setLastName(String string) {
    lastName = string;
    notifyListeners();
  }

  set setDisciplines(List<String> list) {
    disciplines = list;
    notifyListeners();
  }

  set setGoals(List<String> list) {
    goals = list;
    notifyListeners();
  }

  set setCertifications(List<String> list) {
    certifications = list;
    notifyListeners();
  }

  set setGymAddress(String string) {
    gymAddress = string;
    notifyListeners();
  }

  set setTrainingMode(List<String> list) {
    trainingMode = list;
    notifyListeners();
  }

  set setFreeTrial(bool boolean) {
    freeTrial = boolean;
    notifyListeners();
  }
}
