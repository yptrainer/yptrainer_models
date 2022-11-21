import 'package:json_annotation/json_annotation.dart';
import 'package:yptrainerpro_models/src/models/utils.dart';

part 'wallet_transaction.g.dart';

enum TransactionType { purchase, coinsRefund, booking }

@JsonSerializable()
class WalletTransaction {
  final String id;
  @JsonKey(
      fromJson: Utils.timeStampToDateTime, toJson: Utils.dateTimeToTimeStamp)
  final DateTime? createdAt;
  @JsonKey(
      fromJson: Utils.stringToTransactionType,
      toJson: Utils.transactionTypeToString)
  final TransactionType type;
  final String? buyerId;
  final num? price;
  final num coins;

  WalletTransaction({
    this.createdAt,
    required this.id,
    required this.type,
    required this.buyerId,
    this.price,
    required this.coins,
  });

  factory WalletTransaction.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionFromJson(json);

  /// Connect the generated [_$StudioBookingToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WalletTransactionToJson(this);
}
