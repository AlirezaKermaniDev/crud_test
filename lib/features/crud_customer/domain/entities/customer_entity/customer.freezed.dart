// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {required String firstname,
      required String lastname,
      required DateTime dateOfBirth,
      required MobileNumber mobileNumber,
      required EmailAddress emailAddress,
      required BankAccountNumber bankAccountNumber}) {
    return _Customer(
      firstname: firstname,
      lastname: lastname,
      dateOfBirth: dateOfBirth,
      mobileNumber: mobileNumber,
      emailAddress: emailAddress,
      bankAccountNumber: bankAccountNumber,
    );
  }

  Customer fromJson(Map<String, Object?> json) {
    return Customer.fromJson(json);
  }
}

/// @nodoc
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  BankAccountNumber get bankAccountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {String firstname,
      String lastname,
      DateTime dateOfBirth,
      MobileNumber mobileNumber,
      EmailAddress emailAddress,
      BankAccountNumber bankAccountNumber});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? dateOfBirth = freezed,
    Object? mobileNumber = freezed,
    Object? emailAddress = freezed,
    Object? bankAccountNumber = freezed,
  }) {
    return _then(_value.copyWith(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      bankAccountNumber: bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
    ));
  }
}

/// @nodoc
abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstname,
      String lastname,
      DateTime dateOfBirth,
      MobileNumber mobileNumber,
      EmailAddress emailAddress,
      BankAccountNumber bankAccountNumber});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? dateOfBirth = freezed,
    Object? mobileNumber = freezed,
    Object? emailAddress = freezed,
    Object? bankAccountNumber = freezed,
  }) {
    return _then(_Customer(
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      bankAccountNumber: bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Customer implements _Customer {
  const _$_Customer(
      {required this.firstname,
      required this.lastname,
      required this.dateOfBirth,
      required this.mobileNumber,
      required this.emailAddress,
      required this.bankAccountNumber});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final DateTime dateOfBirth;
  @override
  final MobileNumber mobileNumber;
  @override
  final EmailAddress emailAddress;
  @override
  final BankAccountNumber bankAccountNumber;

  @override
  String toString() {
    return 'Customer(firstname: $firstname, lastname: $lastname, dateOfBirth: $dateOfBirth, mobileNumber: $mobileNumber, emailAddress: $emailAddress, bankAccountNumber: $bankAccountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.bankAccountNumber, bankAccountNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(bankAccountNumber));

  @JsonKey(ignore: true)
  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required String firstname,
      required String lastname,
      required DateTime dateOfBirth,
      required MobileNumber mobileNumber,
      required EmailAddress emailAddress,
      required BankAccountNumber bankAccountNumber}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  DateTime get dateOfBirth;
  @override
  MobileNumber get mobileNumber;
  @override
  EmailAddress get emailAddress;
  @override
  BankAccountNumber get bankAccountNumber;
  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
