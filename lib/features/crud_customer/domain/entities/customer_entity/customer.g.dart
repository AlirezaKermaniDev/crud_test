// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Customer _$$_CustomerFromJson(Map<String, dynamic> json) => _$_Customer(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      mobileNumber:
          MobileNumber.fromJson(json['mobileNumber'] as Map<String, dynamic>),
      emailAddress:
          EmailAddress.fromJson(json['emailAddress'] as Map<String, dynamic>),
      bankAccountNumber: BankAccountNumber.fromJson(
          json['bankAccountNumber'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CustomerToJson(_$_Customer instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'mobileNumber': instance.mobileNumber.toJson(),
      'emailAddress': instance.emailAddress.toJson(),
      'bankAccountNumber': instance.bankAccountNumber.toJson(),
    };
