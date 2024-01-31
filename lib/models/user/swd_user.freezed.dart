// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swd_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SWDUser _$SWDUserFromJson(Map<String, dynamic> json) {
  return _SWDUser.fromJson(json);
}

/// @nodoc
mixin _$SWDUser {
  int get id => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "kyc_details")
  String? get kycDetails => throw _privateConstructorUsedError;
  String? get nin => throw _privateConstructorUsedError;
  String? get bvn => throw _privateConstructorUsedError;
  @JsonKey(name: "two_factor_enabled")
  bool? get twoFactorEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "fcm_token")
  String? get fcmToken => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Bank? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool? get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_pin')
  bool? get hasPin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_complete')
  bool? get isComplete => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SWDUserCopyWith<SWDUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SWDUserCopyWith<$Res> {
  factory $SWDUserCopyWith(SWDUser value, $Res Function(SWDUser) then) =
      _$SWDUserCopyWithImpl<$Res, SWDUser>;
  @useResult
  $Res call(
      {int id,
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
      String? name});

  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class _$SWDUserCopyWithImpl<$Res, $Val extends SWDUser>
    implements $SWDUserCopyWith<$Res> {
  _$SWDUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = freezed,
    Object? state = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photo = freezed,
    Object? gender = freezed,
    Object? kycDetails = freezed,
    Object? nin = freezed,
    Object? bvn = freezed,
    Object? twoFactorEnabled = freezed,
    Object? fcmToken = freezed,
    Object? status = freezed,
    Object? bank = freezed,
    Object? createdAt = freezed,
    Object? emailVerified = freezed,
    Object? hasPin = freezed,
    Object? isComplete = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      kycDetails: freezed == kycDetails
          ? _value.kycDetails
          : kycDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      nin: freezed == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as String?,
      bvn: freezed == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorEnabled: freezed == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPin: freezed == hasPin
          ? _value.hasPin
          : hasPin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SWDUserCopyWith<$Res> implements $SWDUserCopyWith<$Res> {
  factory _$$_SWDUserCopyWith(
          _$_SWDUser value, $Res Function(_$_SWDUser) then) =
      __$$_SWDUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
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
      String? name});

  @override
  $BankCopyWith<$Res>? get bank;
}

/// @nodoc
class __$$_SWDUserCopyWithImpl<$Res>
    extends _$SWDUserCopyWithImpl<$Res, _$_SWDUser>
    implements _$$_SWDUserCopyWith<$Res> {
  __$$_SWDUserCopyWithImpl(_$_SWDUser _value, $Res Function(_$_SWDUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? country = freezed,
    Object? state = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? photo = freezed,
    Object? gender = freezed,
    Object? kycDetails = freezed,
    Object? nin = freezed,
    Object? bvn = freezed,
    Object? twoFactorEnabled = freezed,
    Object? fcmToken = freezed,
    Object? status = freezed,
    Object? bank = freezed,
    Object? createdAt = freezed,
    Object? emailVerified = freezed,
    Object? hasPin = freezed,
    Object? isComplete = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SWDUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      kycDetails: freezed == kycDetails
          ? _value.kycDetails
          : kycDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      nin: freezed == nin
          ? _value.nin
          : nin // ignore: cast_nullable_to_non_nullable
              as String?,
      bvn: freezed == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorEnabled: freezed == twoFactorEnabled
          ? _value.twoFactorEnabled
          : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as Bank?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPin: freezed == hasPin
          ? _value.hasPin
          : hasPin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SWDUser with DiagnosticableTreeMixin implements _SWDUser {
  const _$_SWDUser(
      {required this.id,
      this.country,
      this.state,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      this.phone,
      this.email,
      this.username,
      this.photo,
      this.gender,
      @JsonKey(name: "kyc_details") this.kycDetails,
      this.nin,
      this.bvn,
      @JsonKey(name: "two_factor_enabled") this.twoFactorEnabled,
      @JsonKey(name: "fcm_token") this.fcmToken,
      this.status,
      this.bank,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: 'email_verified') this.emailVerified,
      @JsonKey(name: 'has_pin') this.hasPin,
      @JsonKey(name: 'is_complete') this.isComplete,
      this.name});

  factory _$_SWDUser.fromJson(Map<String, dynamic> json) =>
      _$$_SWDUserFromJson(json);

  @override
  final int id;
  @override
  final String? country;
  @override
  final String? state;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? photo;
  @override
  final String? gender;
  @override
  @JsonKey(name: "kyc_details")
  final String? kycDetails;
  @override
  final String? nin;
  @override
  final String? bvn;
  @override
  @JsonKey(name: "two_factor_enabled")
  final bool? twoFactorEnabled;
  @override
  @JsonKey(name: "fcm_token")
  final String? fcmToken;
  @override
  final String? status;
  @override
  final Bank? bank;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: 'email_verified')
  final bool? emailVerified;
  @override
  @JsonKey(name: 'has_pin')
  final bool? hasPin;
  @override
  @JsonKey(name: 'is_complete')
  final bool? isComplete;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SWDUser(id: $id, country: $country, state: $state, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, username: $username, photo: $photo, gender: $gender, kycDetails: $kycDetails, nin: $nin, bvn: $bvn, twoFactorEnabled: $twoFactorEnabled, fcmToken: $fcmToken, status: $status, bank: $bank, createdAt: $createdAt, emailVerified: $emailVerified, hasPin: $hasPin, isComplete: $isComplete, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SWDUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('photo', photo))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('kycDetails', kycDetails))
      ..add(DiagnosticsProperty('nin', nin))
      ..add(DiagnosticsProperty('bvn', bvn))
      ..add(DiagnosticsProperty('twoFactorEnabled', twoFactorEnabled))
      ..add(DiagnosticsProperty('fcmToken', fcmToken))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('bank', bank))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('emailVerified', emailVerified))
      ..add(DiagnosticsProperty('hasPin', hasPin))
      ..add(DiagnosticsProperty('isComplete', isComplete))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SWDUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.kycDetails, kycDetails) ||
                other.kycDetails == kycDetails) &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.bvn, bvn) || other.bvn == bvn) &&
            (identical(other.twoFactorEnabled, twoFactorEnabled) ||
                other.twoFactorEnabled == twoFactorEnabled) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.hasPin, hasPin) || other.hasPin == hasPin) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        country,
        state,
        firstName,
        lastName,
        phone,
        email,
        username,
        photo,
        gender,
        kycDetails,
        nin,
        bvn,
        twoFactorEnabled,
        fcmToken,
        status,
        bank,
        createdAt,
        emailVerified,
        hasPin,
        isComplete,
        name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SWDUserCopyWith<_$_SWDUser> get copyWith =>
      __$$_SWDUserCopyWithImpl<_$_SWDUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SWDUserToJson(
      this,
    );
  }
}

abstract class _SWDUser implements SWDUser {
  const factory _SWDUser(
      {required final int id,
      final String? country,
      final String? state,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      final String? phone,
      final String? email,
      final String? username,
      final String? photo,
      final String? gender,
      @JsonKey(name: "kyc_details") final String? kycDetails,
      final String? nin,
      final String? bvn,
      @JsonKey(name: "two_factor_enabled") final bool? twoFactorEnabled,
      @JsonKey(name: "fcm_token") final String? fcmToken,
      final String? status,
      final Bank? bank,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: 'email_verified') final bool? emailVerified,
      @JsonKey(name: 'has_pin') final bool? hasPin,
      @JsonKey(name: 'is_complete') final bool? isComplete,
      final String? name}) = _$_SWDUser;

  factory _SWDUser.fromJson(Map<String, dynamic> json) = _$_SWDUser.fromJson;

  @override
  int get id;
  @override
  String? get country;
  @override
  String? get state;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get username;
  @override
  String? get photo;
  @override
  String? get gender;
  @override
  @JsonKey(name: "kyc_details")
  String? get kycDetails;
  @override
  String? get nin;
  @override
  String? get bvn;
  @override
  @JsonKey(name: "two_factor_enabled")
  bool? get twoFactorEnabled;
  @override
  @JsonKey(name: "fcm_token")
  String? get fcmToken;
  @override
  String? get status;
  @override
  Bank? get bank;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: 'email_verified')
  bool? get emailVerified;
  @override
  @JsonKey(name: 'has_pin')
  bool? get hasPin;
  @override
  @JsonKey(name: 'is_complete')
  bool? get isComplete;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SWDUserCopyWith<_$_SWDUser> get copyWith =>
      throw _privateConstructorUsedError;
}

Bank _$BankFromJson(Map<String, dynamic> json) {
  return _Bank.fromJson(json);
}

/// @nodoc
mixin _$Bank {
  @JsonKey(name: 'bank_name')
  String? get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String? get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_code')
  String? get bankCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_reference')
  String? get accountReference => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankCopyWith<Bank> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankCopyWith<$Res> {
  factory $BankCopyWith(Bank value, $Res Function(Bank) then) =
      _$BankCopyWithImpl<$Res, Bank>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'bank_code') String? bankCode,
      @JsonKey(name: 'account_reference') String? accountReference,
      @JsonKey(name: 'customer_name') String? customerName});
}

/// @nodoc
class _$BankCopyWithImpl<$Res, $Val extends Bank>
    implements $BankCopyWith<$Res> {
  _$BankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? bankCode = freezed,
    Object? accountReference = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_value.copyWith(
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountReference: freezed == accountReference
          ? _value.accountReference
          : accountReference // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankCopyWith<$Res> implements $BankCopyWith<$Res> {
  factory _$$_BankCopyWith(_$_Bank value, $Res Function(_$_Bank) then) =
      __$$_BankCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bank_name') String? bankName,
      @JsonKey(name: 'account_name') String? accountName,
      @JsonKey(name: 'account_number') String? accountNumber,
      @JsonKey(name: 'bank_code') String? bankCode,
      @JsonKey(name: 'account_reference') String? accountReference,
      @JsonKey(name: 'customer_name') String? customerName});
}

/// @nodoc
class __$$_BankCopyWithImpl<$Res> extends _$BankCopyWithImpl<$Res, _$_Bank>
    implements _$$_BankCopyWith<$Res> {
  __$$_BankCopyWithImpl(_$_Bank _value, $Res Function(_$_Bank) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountName = freezed,
    Object? accountNumber = freezed,
    Object? bankCode = freezed,
    Object? accountReference = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_$_Bank(
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: freezed == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankCode: freezed == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountReference: freezed == accountReference
          ? _value.accountReference
          : accountReference // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bank with DiagnosticableTreeMixin implements _Bank {
  const _$_Bank(
      {@JsonKey(name: 'bank_name') this.bankName,
      @JsonKey(name: 'account_name') this.accountName,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'bank_code') this.bankCode,
      @JsonKey(name: 'account_reference') this.accountReference,
      @JsonKey(name: 'customer_name') this.customerName});

  factory _$_Bank.fromJson(Map<String, dynamic> json) => _$$_BankFromJson(json);

  @override
  @JsonKey(name: 'bank_name')
  final String? bankName;
  @override
  @JsonKey(name: 'account_name')
  final String? accountName;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'bank_code')
  final String? bankCode;
  @override
  @JsonKey(name: 'account_reference')
  final String? accountReference;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bank(bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, bankCode: $bankCode, accountReference: $accountReference, customerName: $customerName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bank'))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('bankCode', bankCode))
      ..add(DiagnosticsProperty('accountReference', accountReference))
      ..add(DiagnosticsProperty('customerName', customerName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bank &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.accountReference, accountReference) ||
                other.accountReference == accountReference) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bankName, accountName,
      accountNumber, bankCode, accountReference, customerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankCopyWith<_$_Bank> get copyWith =>
      __$$_BankCopyWithImpl<_$_Bank>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankToJson(
      this,
    );
  }
}

abstract class _Bank implements Bank {
  const factory _Bank(
      {@JsonKey(name: 'bank_name') final String? bankName,
      @JsonKey(name: 'account_name') final String? accountName,
      @JsonKey(name: 'account_number') final String? accountNumber,
      @JsonKey(name: 'bank_code') final String? bankCode,
      @JsonKey(name: 'account_reference') final String? accountReference,
      @JsonKey(name: 'customer_name') final String? customerName}) = _$_Bank;

  factory _Bank.fromJson(Map<String, dynamic> json) = _$_Bank.fromJson;

  @override
  @JsonKey(name: 'bank_name')
  String? get bankName;
  @override
  @JsonKey(name: 'account_name')
  String? get accountName;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(name: 'bank_code')
  String? get bankCode;
  @override
  @JsonKey(name: 'account_reference')
  String? get accountReference;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(ignore: true)
  _$$_BankCopyWith<_$_Bank> get copyWith => throw _privateConstructorUsedError;
}
