import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainer_models/models/utils.dart';

part 'studio.g.dart';

@JsonSerializable()
class Studio {
  final String? id;
  final String? name;
  final double? rate;
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
    this.id,
    this.minPrice,
    this.maxPrice,
    this.name,
    this.description,
    this.toolsDescription,
    this.serviceDescription,
    this.rate,
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
