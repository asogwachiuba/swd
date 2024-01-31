// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swd_hive_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SWDHiveUserAdapter extends TypeAdapter<SWDHiveUser> {
  @override
  final int typeId = 1;

  @override
  SWDHiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SWDHiveUser(
      id: fields[0] as int?,
      email: fields[1] as String?,
      createdAt: fields[12] as String?,
      country: fields[11] as String?,
      state: fields[2] as String?,
      status: fields[10] as String?,
      firstName: fields[4] as String?,
      gender: fields[9] as String?,
      lastName: fields[5] as String?,
      username: fields[7] as String?,
      phone: fields[6] as String?,
      photo: fields[8] as String?,
      fcmToken: fields[14] as String?,
      bank: fields[13] as HiveBank?,
      name: fields[3] as String?,
      emailVerified: fields[16] as bool?,
      twoFactorEnabled: fields[15] as bool?,
      hasPin: fields[17] as bool?,
      isComplete: fields[18] as bool?,
      bvn: fields[21] as String?,
      kycDetails: fields[19] as String?,
      nin: fields[20] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SWDHiveUser obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.firstName)
      ..writeByte(5)
      ..write(obj.lastName)
      ..writeByte(6)
      ..write(obj.phone)
      ..writeByte(7)
      ..write(obj.username)
      ..writeByte(8)
      ..write(obj.photo)
      ..writeByte(9)
      ..write(obj.gender)
      ..writeByte(10)
      ..write(obj.status)
      ..writeByte(11)
      ..write(obj.country)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.bank)
      ..writeByte(14)
      ..write(obj.fcmToken)
      ..writeByte(15)
      ..write(obj.twoFactorEnabled)
      ..writeByte(16)
      ..write(obj.emailVerified)
      ..writeByte(17)
      ..write(obj.hasPin)
      ..writeByte(18)
      ..write(obj.isComplete)
      ..writeByte(19)
      ..write(obj.kycDetails)
      ..writeByte(20)
      ..write(obj.nin)
      ..writeByte(21)
      ..write(obj.bvn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SWDHiveUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveBankAdapter extends TypeAdapter<HiveBank> {
  @override
  final int typeId = 2;

  @override
  HiveBank read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveBank(
      bankName: fields[0] as String?,
      accountName: fields[1] as String?,
      accountNumber: fields[2] as String?,
      bankCode: fields[3] as String?,
      accountReference: fields[4] as String?,
      customerName: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveBank obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.bankName)
      ..writeByte(1)
      ..write(obj.accountName)
      ..writeByte(2)
      ..write(obj.accountNumber)
      ..writeByte(3)
      ..write(obj.bankCode)
      ..writeByte(4)
      ..write(obj.accountReference)
      ..writeByte(5)
      ..write(obj.customerName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveBankAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
