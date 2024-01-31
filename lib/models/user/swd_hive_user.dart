import 'package:hive_flutter/hive_flutter.dart';
import 'package:swd/models/user/swd_user.dart';

part 'swd_hive_user.g.dart';

@HiveType(typeId: 1)
class SWDHiveUser extends HiveObject {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? email;
  @HiveField(2)
  String? state;
  @HiveField(3)
  String? name;
  @HiveField(4)
  String? firstName;
  @HiveField(5)
  String? lastName;
  @HiveField(6)
  String? phone;
  @HiveField(7)
  String? username;
  @HiveField(8)
  String? photo;
  @HiveField(9)
  String? gender;
  @HiveField(10)
  String? status;
  @HiveField(11)
  String? country;
  @HiveField(12)
  String? createdAt;
  @HiveField(13)
  HiveBank? bank;
  @HiveField(14)
  String? fcmToken;
  @HiveField(15)
  bool? twoFactorEnabled;
  @HiveField(16)
  bool? emailVerified;
  @HiveField(17)
  bool? hasPin;
  @HiveField(18)
  bool? isComplete;
  @HiveField(19)
  String? kycDetails;
  @HiveField(20)
  String? nin;
  @HiveField(21)
  String? bvn;

  SWDHiveUser({
    required this.id,
    required this.email,
    this.createdAt,
    this.country,
    this.state,
    this.status,
    this.firstName,
    this.gender,
    this.lastName,
    this.username,
    this.phone,
    this.photo,
    this.fcmToken,
    this.bank,
    this.name,
    this.emailVerified,
    this.twoFactorEnabled,
    this.hasPin,
    this.isComplete,
    this.bvn,
    this.kycDetails,
    this.nin,
  });

  factory SWDHiveUser.fromSigninResponse({required SWDUser user}) {
    return SWDHiveUser(
      id: user.id,
      email: user.email,
      createdAt: user.createdAt,
      state: user.state,
      firstName: user.firstName,
      lastName: user.lastName,
      bank: user.bank != null ? HiveBank.fromBank(bank: user.bank!) : null,
      name: user.name,
      username: user.username,
      photo: user.photo,
      phone: user.phone,
      country: user.country,
      status: user.status,
      fcmToken: user.fcmToken,
      gender: user.gender,
      twoFactorEnabled: user.twoFactorEnabled,
      emailVerified: user.emailVerified,
      hasPin: user.hasPin,
      isComplete: user.isComplete,
      nin: user.nin,
      bvn: user.bvn,
      kycDetails: user.kycDetails,
    );
  }
}

@HiveType(typeId: 2)
class HiveBank extends HiveObject {
  @HiveField(0)
  String? bankName;
  @HiveField(1)
  String? accountName;
  @HiveField(2)
  String? accountNumber;
  @HiveField(3)
  String? bankCode;
  @HiveField(4)
  String? accountReference;
  @HiveField(5)
  String? customerName;

  HiveBank({
    this.bankName,
    this.accountName,
    this.accountNumber,
    this.bankCode,
    this.accountReference,
    this.customerName,
  });

  factory HiveBank.fromBank({required Bank bank}) {
    return HiveBank(
      bankName: bank.bankName,
      accountName: bank.accountName,
      accountNumber: bank.accountNumber,
      bankCode: bank.bankCode,
      accountReference: bank.accountReference,
      customerName: bank.customerName,
    );
  }
}
