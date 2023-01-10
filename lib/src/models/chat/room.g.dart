// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      id: json['id'] as String,
      createdAt: Utils.timeStampToDateTime(json['createdAt'] as Timestamp),
      updatedAt: Utils.timeStampToDateTime(json['updatedAt'] as Timestamp),
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
      type: $enumDecode(_$RoomTypeEnumMap, json['type']),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': Utils.dateTimeToTimeStamp(instance.createdAt),
      'updatedAt': Utils.dateTimeToTimeStamp(instance.updatedAt),
      'users': instance.users,
      'type': _$RoomTypeEnumMap[instance.type]!,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };

const _$RoomTypeEnumMap = {
  RoomType.channel: 'channel',
  RoomType.direct: 'direct',
  RoomType.group: 'group',
};
