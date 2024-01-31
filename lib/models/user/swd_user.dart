import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'swd_user.freezed.dart';
part 'swd_user.g.dart';

@freezed
class SWDUser with _$SWDUser {
  const factory SWDUser({
    required int id,
    String? country,
    String? state,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    String? phone,
    String? email,
    String? username,
    String? photo,
    String? gender,
    @JsonKey(name: "kyc_details") String? kycDetails,
    String? nin,
    String? bvn,
    @JsonKey(name: "two_factor_enabled") bool? twoFactorEnabled,
    @JsonKey(name: "fcm_token") String? fcmToken,
    String? status,
    Bank? bank,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: 'email_verified') bool? emailVerified,
    @JsonKey(name: 'has_pin') bool? hasPin,
    @JsonKey(name: 'is_complete') bool? isComplete,
    String? name,
  }) = _SWDUser;

  factory SWDUser.fromJson(Map<String, Object?> json) =>
      _$SWDUserFromJson(json);
}

@freezed
class Bank with _$Bank {
  const factory Bank({
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'account_name') String? accountName,
    @JsonKey(name: 'account_number') String? accountNumber,
    @JsonKey(name: 'bank_code') String? bankCode,
    @JsonKey(name: 'account_reference') String? accountReference,
    @JsonKey(name: 'customer_name') String? customerName,
  }) = _Bank;

  factory Bank.fromJson(Map<String, Object?> json) => _$BankFromJson(json);
}
