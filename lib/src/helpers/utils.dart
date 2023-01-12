import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:yptrainer_utils/src/models/wallet_transaction.dart';

// ignore: avoid_classes_with_only_static_members
class Utils {
  static DateTime timeStampToDateTime(Timestamp timestamp) {
    return DateTime.parse(timestamp.toDate().toString());
  }

  static Timestamp dateTimeToTimeStamp(DateTime? dateTime) {
    return Timestamp.fromDate(dateTime ?? DateTime.now()); //To TimeStamp
  }

  static TransactionType stringToTransactionType(String type) {
    return EnumToString.fromString(TransactionType.values, type)!;
  }

  static String transactionTypeToString(TransactionType type) {
    return EnumToString.convertToString(type);
  }
}
