import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainer_models/src/helpers/utils.dart';

part 'room.g.dart';

enum RoomType { channel, direct, group }

@JsonSerializable()
class Room {
  final String id;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime? createdAt;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime? updatedAt;
  final List<String> users;
  final RoomType type;
  final String? name;
  final String? imageUrl;

  Room({
    required this.id,
    this.createdAt,
    this.updatedAt,
    required this.users,
    required this.type,
    this.name,
    this.imageUrl,
  });

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
