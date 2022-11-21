// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletTransaction _$WalletTransactionFromJson(Map<String, dynamic> json) =>
    WalletTransaction(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String,
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      buyerId: json['buyerId'] as String?,
      price: json['price'] as num?,
      coins: json['coins'] as num,
    );

Map<String, dynamic> _$WalletTransactionToJson(WalletTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'buyerId': instance.buyerId,
      'price': instance.price,
      'coins': instance.coins,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.purchase: 'purchase',
  TransactionType.coinsRefund: 'coinsRefund',
  TransactionType.booking: 'booking',
};
