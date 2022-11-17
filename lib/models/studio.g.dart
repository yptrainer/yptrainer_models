// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Studio _$StudioFromJson(Map<String, dynamic> json) => Studio(
      id: json['id'] as String?,
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      toolsDescription: json['toolsDescription'] as String?,
      serviceDescription: json['serviceDescription'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      services: json['services'] as List<dynamic>?,
      vikeyToolKey: json['vikeyToolKey'] as String?,
      vikeyLocalKey: json['vikeyLocalKey'] as String?,
      address: json['address'] as String?,
      priceDescription: json['priceDescription'] as String?,
      size: json['size'] as int?,
      tools: json['tools'] as List<dynamic>?,
      maxPeople: json['maxPeople'] as int?,
      date: Utils.timeStampToDateTime(json['date'] as Timestamp),
      disciplines: json['disciplines'] as List<dynamic>?,
    );

Map<String, dynamic> _$StudioToJson(Studio instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'address': instance.address,
      'size': instance.size,
      'priceDescription': instance.priceDescription,
      'maxPeople': instance.maxPeople,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'date': Utils.dateTimeToTimeStamp(instance.date),
      'description': instance.description,
      'toolsDescription': instance.toolsDescription,
      'serviceDescription': instance.serviceDescription,
      'tools': instance.tools,
      'services': instance.services,
      'disciplines': instance.disciplines,
      'vikeyLocalKey': instance.vikeyLocalKey,
      'vikeyToolKey': instance.vikeyToolKey,
    };
