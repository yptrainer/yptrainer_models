// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudioBooking _$StudioBookingFromJson(Map<String, dynamic> json) =>
    StudioBooking(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      placeAddress: json['placeAddress'] as String?,
      bookingStart:
          Utils.timeStampToDateTime(json['bookingStart'] as Timestamp),
      bookingEnd: Utils.timeStampToDateTime(json['bookingEnd'] as Timestamp),
      placeId: json['placeId'] as String?,
      placeName: json['placeName'] as String?,
      userId: json['userId'] as String?,
      trainerId: json['trainerId'] as String?,
      createdAt: Utils.timeStampToDateTime(json['createdAt'] as Timestamp),
      updatedAt: Utils.timeStampToDateTime(json['updatedAt'] as Timestamp),
      userName: json['userName'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceDuration: json['serviceDuration'] as int?,
      servicePrice: json['servicePrice'] as int?,
    );

Map<String, dynamic> _$StudioBookingToJson(StudioBooking instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'trainerId': instance.trainerId,
      'userName': instance.userName,
      'placeId': instance.placeId,
      'placeName': instance.placeName,
      'serviceName': instance.serviceName,
      'serviceDuration': instance.serviceDuration,
      'servicePrice': instance.servicePrice,
      'createdAt': Utils.dateTimeToTimeStamp(instance.createdAt),
      'updatedAt': Utils.dateTimeToTimeStamp(instance.updatedAt),
      'bookingStart': Utils.dateTimeToTimeStamp(instance.bookingStart),
      'bookingEnd': Utils.dateTimeToTimeStamp(instance.bookingEnd),
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'placeAddress': instance.placeAddress,
    };
