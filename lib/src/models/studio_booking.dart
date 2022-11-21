import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainerpro_models/src/models/utils.dart';

part 'studio_booking.g.dart';

@JsonSerializable()
class StudioBooking {
  /// The generated code assumes these values exist in JSON.
  final String id;
  final String? userId;
  final String? trainerId;
  final String? userName;
  final String placeId;
  final String? placeName;
  final String? serviceName;
  final int? serviceDuration;
  /* final String? vikeyReservationCode; */
  final int? servicePrice;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime createdAt;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime updatedAt;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime bookingStart;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime bookingEnd;
  final String? email;
  final String? phoneNumber;
  final String? placeAddress;
  final bool? cancelled;

  StudioBooking(
      {required this.id,
      this.email,
      this.phoneNumber,
      /*  this.vikeyReservationCode, */
      this.cancelled,
      this.placeAddress,
      required this.bookingStart,
      required this.bookingEnd,
      required this.placeId,
      this.placeName,
      this.userId,
      this.trainerId,
      required this.createdAt,
      required this.updatedAt,
      this.userName,
      this.serviceName,
      this.serviceDuration,
      this.servicePrice});

  /// Connect the generated [_$StudioBookingFromJson] function to the `fromJson`
  /// factory.
  factory StudioBooking.fromJson(Map<String, dynamic> json) =>
      _$StudioBookingFromJson(json);

  /// Connect the generated [_$StudioBookingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$StudioBookingToJson(this);
}

class Slots {
  static List<DateTimeRange> getSlots(int? year, int? month, int? day) {
    List<DateTimeRange> temp = [];

    for (var i = 0; i < 12; i++) {
      var start = DateTime(year!, month!, day!, 8 + i, 0, 0, 0, 0);
      var end = DateTime(year, month, day, 8 + i, 59, 59, 999, 999);

      var range = DateTimeRange(start: start, end: end);
      temp.add(range);
    }
    return temp;
  }
}
