// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Studio _$StudioFromJson(Map<String, dynamic> json) => Studio(
      id: json['id'] as String,
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      toolsDescription: json['toolsDescription'] as String?,
      serviceDescription: json['serviceDescription'] as String?,
      services: json['services'] as List<dynamic>?,
      vikeyToolKey: json['vikeyToolKey'] as String?,
      vikeyLocalKey: json['vikeyLocalKey'] as String?,
      address: json['address'] as String?,
      priceDescription: json['priceDescription'] as String?,
      size: json['size'] as int?,
      tools: json['tools'] as List<dynamic>?,
      maxPeople: json['maxPeople'] as int?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      disciplines: json['disciplines'] as List<dynamic>?,
    );

Map<String, dynamic> _$StudioToJson(Studio instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'size': instance.size,
      'priceDescription': instance.priceDescription,
      'maxPeople': instance.maxPeople,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
      'toolsDescription': instance.toolsDescription,
      'serviceDescription': instance.serviceDescription,
      'tools': instance.tools,
      'services': instance.services,
      'disciplines': instance.disciplines,
      'vikeyLocalKey': instance.vikeyLocalKey,
      'vikeyToolKey': instance.vikeyToolKey,
    };
