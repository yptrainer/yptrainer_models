// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudioBooking _$StudioBookingFromJson(Map<String, dynamic> json) =>
    StudioBooking(
      id: json['id'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      cancelled: json['cancelled'] as bool?,
      placeAddress: json['placeAddress'] as String?,
      bookingStart: DateTime.parse(json['bookingStart'] as String),
      bookingEnd: DateTime.parse(json['bookingEnd'] as String),
      placeId: json['placeId'] as String,
      placeName: json['placeName'] as String?,
      userId: json['userId'] as String?,
      trainerId: json['trainerId'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userName: json['userName'] as String?,
      serviceName: json['serviceName'] as String?,
      serviceDuration: json['serviceDuration'] as int?,
      servicePrice: json['servicePrice'] as int?,
    );

Map<String, dynamic> _$StudioBookingToJson(StudioBooking instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'trainerId': instance.trainerId,
      'userName': instance.userName,
      'placeId': instance.placeId,
      'placeName': instance.placeName,
      'serviceName': instance.serviceName,
      'serviceDuration': instance.serviceDuration,
      'servicePrice': instance.servicePrice,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'bookingStart': instance.bookingStart.toIso8601String(),
      'bookingEnd': instance.bookingEnd.toIso8601String(),
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'placeAddress': instance.placeAddress,
      'cancelled': instance.cancelled,
    };
