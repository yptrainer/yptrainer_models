import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainerpro_models/src/helpers/utils.dart';

part 'studio.g.dart';

@JsonSerializable()
class Studio {
  final String id;
  final String? name;
  final String? address;
  final int? size;
  final String? priceDescription;
  final int? maxPeople;
  final int? minPrice;
  final int? maxPrice;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime? date;
  final String? description;
  final String? toolsDescription;
  final String? serviceDescription;
  final List<dynamic>? tools;
  final List<dynamic>? services;

  final List<dynamic>? disciplines;
  final String? vikeyLocalKey;
  final String? vikeyToolKey;

  Studio({
    required this.id,
    this.minPrice,
    this.maxPrice,
    this.name,
    this.description,
    this.toolsDescription,
    this.serviceDescription,
    this.services,
    this.vikeyToolKey,
    this.vikeyLocalKey,
    this.address,
    this.priceDescription,
    this.size,
    this.tools,
    this.maxPeople,
    this.date,
    this.disciplines,
  });

  factory Studio.fromJson(Map<String, dynamic> json) => _$StudioFromJson(json);

  Map<String, dynamic> toJson() => _$StudioToJson(this);
}
