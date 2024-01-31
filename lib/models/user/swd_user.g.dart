// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swd_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SWDUser _$$_SWDUserFromJson(Map<String, dynamic> json) => _$_SWDUser(
      id: json['id'] as int,
      country: json['country'] as String?,
      state: json['state'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      kycDetails: json['kyc_details'] as String?,
      nin: json['nin'] as String?,
      bvn: json['bvn'] as String?,
      twoFactorEnabled: json['two_factor_enabled'] as bool?,
      fcmToken: json['fcm_token'] as String?,
      status: json['status'] as String?,
      bank: json['bank'] == null
          ? null
          : Bank.fromJson(json['bank'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
      emailVerified: json['email_verified'] as bool?,
      hasPin: json['has_pin'] as bool?,
      isComplete: json['is_complete'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SWDUserToJson(_$_SWDUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'state': instance.state,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'username': instance.username,
      'photo': instance.photo,
      'gender': instance.gender,
      'kyc_details': instance.kycDetails,
      'nin': instance.nin,
      'bvn': instance.bvn,
      'two_factor_enabled': instance.twoFactorEnabled,
      'fcm_token': instance.fcmToken,
      'status': instance.status,
      'bank': instance.bank,
      'created_at': instance.createdAt,
      'email_verified': instance.emailVerified,
      'has_pin': instance.hasPin,
      'is_complete': instance.isComplete,
      'name': instance.name,
    };

_$_Bank _$$_BankFromJson(Map<String, dynamic> json) => _$_Bank(
      bankName: json['bank_name'] as String?,
      accountName: json['account_name'] as String?,
      accountNumber: json['account_number'] as String?,
      bankCode: json['bank_code'] as String?,
      accountReference: json['account_reference'] as String?,
      customerName: json['customer_name'] as String?,
    );

Map<String, dynamic> _$$_BankToJson(_$_Bank instance) => <String, dynamic>{
      'bank_name': instance.bankName,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'bank_code': instance.bankCode,
      'account_reference': instance.accountReference,
      'customer_name': instance.customerName,
    };
