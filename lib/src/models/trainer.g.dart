// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trainer _$TrainerFromJson(Map<String, dynamic> json) => Trainer(
      id: json['id'] as String?,
      onboarding: json['onboarding'] as bool?,
      certifications: (json['certifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      city: json['city'] as String?,
      description: json['description'] as String?,
      disciplines: (json['disciplines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email: json['email'] as String?,
      freeTrial: json['freeTrial'] as bool?,
      goals:
          (json['goals'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gymAddress: json['gymAddress'] as String?,
      insurance: json['insurance'] as bool?,
      laurea: json['laurea'] as bool?,
      maxPrice: json['maxPrice'] as num?,
      minPrice: json['minPrice'] as num?,
      firstName: json['firstName'] as String?,
      startedYear: json['startedYear'] as num?,
      lastName: json['lastName'] as String?,
      trainingMode: (json['trainingMode'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      vat: json['vat'] as bool?,
      ypStudios: (json['ypStudios'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TrainerToJson(Trainer instance) => <String, dynamic>{
      'onboarding': instance.onboarding,
      'id': instance.id,
      'certifications': instance.certifications,
      'city': instance.city,
      'description': instance.description,
      'disciplines': instance.disciplines,
      'email': instance.email,
      'freeTrial': instance.freeTrial,
      'gymAddress': instance.gymAddress,
      'insurance': instance.insurance,
      'laurea': instance.laurea,
      'maxPrice': instance.maxPrice,
      'minPrice': instance.minPrice,
      'firstName': instance.firstName,
      'goals': instance.goals,
      'startedYear': instance.startedYear,
      'lastName': instance.lastName,
      'trainingMode': instance.trainingMode,
      'vat': instance.vat,
      'ypStudios': instance.ypStudios,
    };
