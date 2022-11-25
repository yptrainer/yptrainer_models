// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletTransaction _$WalletTransactionFromJson(Map<String, dynamic> json) =>
    WalletTransaction(
      createdAt: Utils.timeStampToDateTime(json['createdAt'] as Timestamp),
      fiscalCode: json['fiscalCode'] as String?,
      id: json['id'] as String,
      type: Utils.stringToTransactionType(json['type'] as String),
      buyerId: json['buyerId'] as String?,
      price: json['price'] as num?,
      coins: json['coins'] as num,
    );

Map<String, dynamic> _$WalletTransactionToJson(WalletTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': Utils.dateTimeToTimeStamp(instance.createdAt),
      'type': Utils.transactionTypeToString(instance.type),
      'buyerId': instance.buyerId,
      'price': instance.price,
      'coins': instance.coins,
      'fiscalCode': instance.fiscalCode,
    };
