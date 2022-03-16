// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_customer_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddCustomerBlocEventTearOff {
  const _$AddCustomerBlocEventTearOff();

  _FirstNameChanged firstNameChanged(String firstName) {
    return _FirstNameChanged(
      firstName,
    );
  }

  _LastNameChanged lastNameChanged(String lastName) {
    return _LastNameChanged(
      lastName,
    );
  }

  _BateOfBirthChange dateOfBirthChange(DateTime dateOfBirth) {
    return _BateOfBirthChange(
      dateOfBirth,
    );
  }

  _EmailAddressChanged emailAddressChanged(String emailAddress) {
    return _EmailAddressChanged(
      emailAddress,
    );
  }

  _MobileNumberChanged mobileNumberChanged(String mobileNumber) {
    return _MobileNumberChanged(
      mobileNumber,
    );
  }

  _bankAccountNumberChanged bankAccountNumberChanged(String bankAccountNumber) {
    return _bankAccountNumberChanged(
      bankAccountNumber,
    );
  }

  _AddCustomerPressed addCustomerPressed() {
    return const _AddCustomerPressed();
  }
}

/// @nodoc
const $AddCustomerBlocEvent = _$AddCustomerBlocEventTearOff();

/// @nodoc
mixin _$AddCustomerBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerBlocEventCopyWith<$Res> {
  factory $AddCustomerBlocEventCopyWith(AddCustomerBlocEvent value,
          $Res Function(AddCustomerBlocEvent) then) =
      _$AddCustomerBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements $AddCustomerBlocEventCopyWith<$Res> {
  _$AddCustomerBlocEventCopyWithImpl(this._value, this._then);

  final AddCustomerBlocEvent _value;
  // ignore: unused_field
  final $Res Function(AddCustomerBlocEvent) _then;
}

/// @nodoc
abstract class _$FirstNameChangedCopyWith<$Res> {
  factory _$FirstNameChangedCopyWith(
          _FirstNameChanged value, $Res Function(_FirstNameChanged) then) =
      __$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class __$FirstNameChangedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$FirstNameChangedCopyWith<$Res> {
  __$FirstNameChangedCopyWithImpl(
      _FirstNameChanged _value, $Res Function(_FirstNameChanged) _then)
      : super(_value, (v) => _then(v as _FirstNameChanged));

  @override
  _FirstNameChanged get _value => super._value as _FirstNameChanged;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_FirstNameChanged(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstNameChanged implements _FirstNameChanged {
  const _$_FirstNameChanged(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirstNameChanged &&
            const DeepCollectionEquality().equals(other.firstName, firstName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(firstName));

  @JsonKey(ignore: true)
  @override
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      __$FirstNameChangedCopyWithImpl<_FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements AddCustomerBlocEvent {
  const factory _FirstNameChanged(String firstName) = _$_FirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LastNameChangedCopyWith<$Res> {
  factory _$LastNameChangedCopyWith(
          _LastNameChanged value, $Res Function(_LastNameChanged) then) =
      __$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class __$LastNameChangedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$LastNameChangedCopyWith<$Res> {
  __$LastNameChangedCopyWithImpl(
      _LastNameChanged _value, $Res Function(_LastNameChanged) _then)
      : super(_value, (v) => _then(v as _LastNameChanged));

  @override
  _LastNameChanged get _value => super._value as _LastNameChanged;

  @override
  $Res call({
    Object? lastName = freezed,
  }) {
    return _then(_LastNameChanged(
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastNameChanged &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      __$LastNameChangedCopyWithImpl<_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements AddCustomerBlocEvent {
  const factory _LastNameChanged(String lastName) = _$_LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BateOfBirthChangeCopyWith<$Res> {
  factory _$BateOfBirthChangeCopyWith(
          _BateOfBirthChange value, $Res Function(_BateOfBirthChange) then) =
      __$BateOfBirthChangeCopyWithImpl<$Res>;
  $Res call({DateTime dateOfBirth});
}

/// @nodoc
class __$BateOfBirthChangeCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$BateOfBirthChangeCopyWith<$Res> {
  __$BateOfBirthChangeCopyWithImpl(
      _BateOfBirthChange _value, $Res Function(_BateOfBirthChange) _then)
      : super(_value, (v) => _then(v as _BateOfBirthChange));

  @override
  _BateOfBirthChange get _value => super._value as _BateOfBirthChange;

  @override
  $Res call({
    Object? dateOfBirth = freezed,
  }) {
    return _then(_BateOfBirthChange(
      dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BateOfBirthChange implements _BateOfBirthChange {
  const _$_BateOfBirthChange(this.dateOfBirth);

  @override
  final DateTime dateOfBirth;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.dateOfBirthChange(dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BateOfBirthChange &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(dateOfBirth));

  @JsonKey(ignore: true)
  @override
  _$BateOfBirthChangeCopyWith<_BateOfBirthChange> get copyWith =>
      __$BateOfBirthChangeCopyWithImpl<_BateOfBirthChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return dateOfBirthChange(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return dateOfBirthChange?.call(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (dateOfBirthChange != null) {
      return dateOfBirthChange(dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return dateOfBirthChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return dateOfBirthChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (dateOfBirthChange != null) {
      return dateOfBirthChange(this);
    }
    return orElse();
  }
}

abstract class _BateOfBirthChange implements AddCustomerBlocEvent {
  const factory _BateOfBirthChange(DateTime dateOfBirth) = _$_BateOfBirthChange;

  DateTime get dateOfBirth;
  @JsonKey(ignore: true)
  _$BateOfBirthChangeCopyWith<_BateOfBirthChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailAddressChangedCopyWith<$Res> {
  factory _$EmailAddressChangedCopyWith(_EmailAddressChanged value,
          $Res Function(_EmailAddressChanged) then) =
      __$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

/// @nodoc
class __$EmailAddressChangedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$EmailAddressChangedCopyWith<$Res> {
  __$EmailAddressChangedCopyWithImpl(
      _EmailAddressChanged _value, $Res Function(_EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as _EmailAddressChanged));

  @override
  _EmailAddressChanged get _value => super._value as _EmailAddressChanged;

  @override
  $Res call({
    Object? emailAddress = freezed,
  }) {
    return _then(_EmailAddressChanged(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.emailAddress);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.emailAddressChanged(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailAddressChanged &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailAddress));

  @JsonKey(ignore: true)
  @override
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith =>
      __$EmailAddressChangedCopyWithImpl<_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return emailAddressChanged(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return emailAddressChanged?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements AddCustomerBlocEvent {
  const factory _EmailAddressChanged(String emailAddress) =
      _$_EmailAddressChanged;

  String get emailAddress;
  @JsonKey(ignore: true)
  _$EmailAddressChangedCopyWith<_EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MobileNumberChangedCopyWith<$Res> {
  factory _$MobileNumberChangedCopyWith(_MobileNumberChanged value,
          $Res Function(_MobileNumberChanged) then) =
      __$MobileNumberChangedCopyWithImpl<$Res>;
  $Res call({String mobileNumber});
}

/// @nodoc
class __$MobileNumberChangedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$MobileNumberChangedCopyWith<$Res> {
  __$MobileNumberChangedCopyWithImpl(
      _MobileNumberChanged _value, $Res Function(_MobileNumberChanged) _then)
      : super(_value, (v) => _then(v as _MobileNumberChanged));

  @override
  _MobileNumberChanged get _value => super._value as _MobileNumberChanged;

  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_MobileNumberChanged(
      mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MobileNumberChanged implements _MobileNumberChanged {
  const _$_MobileNumberChanged(this.mobileNumber);

  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.mobileNumberChanged(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MobileNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith =>
      __$MobileNumberChangedCopyWithImpl<_MobileNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return mobileNumberChanged(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return mobileNumberChanged?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return mobileNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return mobileNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _MobileNumberChanged implements AddCustomerBlocEvent {
  const factory _MobileNumberChanged(String mobileNumber) =
      _$_MobileNumberChanged;

  String get mobileNumber;
  @JsonKey(ignore: true)
  _$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$bankAccountNumberChangedCopyWith<$Res> {
  factory _$bankAccountNumberChangedCopyWith(_bankAccountNumberChanged value,
          $Res Function(_bankAccountNumberChanged) then) =
      __$bankAccountNumberChangedCopyWithImpl<$Res>;
  $Res call({String bankAccountNumber});
}

/// @nodoc
class __$bankAccountNumberChangedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$bankAccountNumberChangedCopyWith<$Res> {
  __$bankAccountNumberChangedCopyWithImpl(_bankAccountNumberChanged _value,
      $Res Function(_bankAccountNumberChanged) _then)
      : super(_value, (v) => _then(v as _bankAccountNumberChanged));

  @override
  _bankAccountNumberChanged get _value =>
      super._value as _bankAccountNumberChanged;

  @override
  $Res call({
    Object? bankAccountNumber = freezed,
  }) {
    return _then(_bankAccountNumberChanged(
      bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_bankAccountNumberChanged implements _bankAccountNumberChanged {
  const _$_bankAccountNumberChanged(this.bankAccountNumber);

  @override
  final String bankAccountNumber;

  @override
  String toString() {
    return 'AddCustomerBlocEvent.bankAccountNumberChanged(bankAccountNumber: $bankAccountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bankAccountNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.bankAccountNumber, bankAccountNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bankAccountNumber));

  @JsonKey(ignore: true)
  @override
  _$bankAccountNumberChangedCopyWith<_bankAccountNumberChanged> get copyWith =>
      __$bankAccountNumberChangedCopyWithImpl<_bankAccountNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return bankAccountNumberChanged(bankAccountNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return bankAccountNumberChanged?.call(bankAccountNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (bankAccountNumberChanged != null) {
      return bankAccountNumberChanged(bankAccountNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return bankAccountNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return bankAccountNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (bankAccountNumberChanged != null) {
      return bankAccountNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _bankAccountNumberChanged implements AddCustomerBlocEvent {
  const factory _bankAccountNumberChanged(String bankAccountNumber) =
      _$_bankAccountNumberChanged;

  String get bankAccountNumber;
  @JsonKey(ignore: true)
  _$bankAccountNumberChangedCopyWith<_bankAccountNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCustomerPressedCopyWith<$Res> {
  factory _$AddCustomerPressedCopyWith(
          _AddCustomerPressed value, $Res Function(_AddCustomerPressed) then) =
      __$AddCustomerPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCustomerPressedCopyWithImpl<$Res>
    extends _$AddCustomerBlocEventCopyWithImpl<$Res>
    implements _$AddCustomerPressedCopyWith<$Res> {
  __$AddCustomerPressedCopyWithImpl(
      _AddCustomerPressed _value, $Res Function(_AddCustomerPressed) _then)
      : super(_value, (v) => _then(v as _AddCustomerPressed));

  @override
  _AddCustomerPressed get _value => super._value as _AddCustomerPressed;
}

/// @nodoc

class _$_AddCustomerPressed implements _AddCustomerPressed {
  const _$_AddCustomerPressed();

  @override
  String toString() {
    return 'AddCustomerBlocEvent.addCustomerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddCustomerPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String emailAddress) emailAddressChanged,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() addCustomerPressed,
  }) {
    return addCustomerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
  }) {
    return addCustomerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String emailAddress)? emailAddressChanged,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (addCustomerPressed != null) {
      return addCustomerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_bankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_AddCustomerPressed value) addCustomerPressed,
  }) {
    return addCustomerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
  }) {
    return addCustomerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_bankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_AddCustomerPressed value)? addCustomerPressed,
    required TResult orElse(),
  }) {
    if (addCustomerPressed != null) {
      return addCustomerPressed(this);
    }
    return orElse();
  }
}

abstract class _AddCustomerPressed implements AddCustomerBlocEvent {
  const factory _AddCustomerPressed() = _$_AddCustomerPressed;
}

/// @nodoc
class _$AddCustomerBlocStateTearOff {
  const _$AddCustomerBlocStateTearOff();

  _AddCustomerBlocState call(
      {required String firstName,
      required String lastName,
      required DateTime dateOfBirthChange,
      required EmailAddress emailAddress,
      required MobileNumber mobileNumber,
      required BankAccountNumber bankAccountNumber,
      required Option<Either<CustomerFailure, Customer>>
          customerfailureOrSuccessOption,
      required bool isAdding,
      required bool showError}) {
    return _AddCustomerBlocState(
      firstName: firstName,
      lastName: lastName,
      dateOfBirthChange: dateOfBirthChange,
      emailAddress: emailAddress,
      mobileNumber: mobileNumber,
      bankAccountNumber: bankAccountNumber,
      customerfailureOrSuccessOption: customerfailureOrSuccessOption,
      isAdding: isAdding,
      showError: showError,
    );
  }
}

/// @nodoc
const $AddCustomerBlocState = _$AddCustomerBlocStateTearOff();

/// @nodoc
mixin _$AddCustomerBlocState {
  /// This hold [firstName] value that user Enter.
  String get firstName => throw _privateConstructorUsedError;

  /// This hold [lastName] value that user Enter.
  String get lastName => throw _privateConstructorUsedError;

  /// This hold [bateOfBirthChange] value that user Enter.
  DateTime get dateOfBirthChange => throw _privateConstructorUsedError;

  /// This hold [emailAddress] value that user Enter.
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  /// This hold [mobileNumber] value that user Enter.
  MobileNumber get mobileNumber => throw _privateConstructorUsedError;

  /// This hold [bankAccountNumber] value that user Enter.
  BankAccountNumber get bankAccountNumber => throw _privateConstructorUsedError;

  /// This will use when we have some response from our `Data Sources`
  /// The reason of why Used Option class is because in some `Events` we dont have any
  /// transaction with `Data Sourses` and on that situation we can only pass `none()` function to this variable
  /// which means we dont have any response nu when we have response from `Data Sources` we will pass `some()` function
  /// and put our response to this function.
  Option<Either<CustomerFailure, Customer>>
      get customerfailureOrSuccessOption => throw _privateConstructorUsedError;

  /// This is a boolean type to tell us when we have transaction with `Data Sourses`.
  bool get isAdding => throw _privateConstructorUsedError;

  /// This is for when we have some error.
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddCustomerBlocStateCopyWith<AddCustomerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerBlocStateCopyWith<$Res> {
  factory $AddCustomerBlocStateCopyWith(AddCustomerBlocState value,
          $Res Function(AddCustomerBlocState) then) =
      _$AddCustomerBlocStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      DateTime dateOfBirthChange,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      BankAccountNumber bankAccountNumber,
      Option<Either<CustomerFailure, Customer>> customerfailureOrSuccessOption,
      bool isAdding,
      bool showError});
}

/// @nodoc
class _$AddCustomerBlocStateCopyWithImpl<$Res>
    implements $AddCustomerBlocStateCopyWith<$Res> {
  _$AddCustomerBlocStateCopyWithImpl(this._value, this._then);

  final AddCustomerBlocState _value;
  // ignore: unused_field
  final $Res Function(AddCustomerBlocState) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirthChange = freezed,
    Object? emailAddress = freezed,
    Object? mobileNumber = freezed,
    Object? bankAccountNumber = freezed,
    Object? customerfailureOrSuccessOption = freezed,
    Object? isAdding = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthChange: dateOfBirthChange == freezed
          ? _value.dateOfBirthChange
          : dateOfBirthChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      bankAccountNumber: bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
      customerfailureOrSuccessOption: customerfailureOrSuccessOption == freezed
          ? _value.customerfailureOrSuccessOption
          : customerfailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CustomerFailure, Customer>>,
      isAdding: isAdding == freezed
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddCustomerBlocStateCopyWith<$Res>
    implements $AddCustomerBlocStateCopyWith<$Res> {
  factory _$AddCustomerBlocStateCopyWith(_AddCustomerBlocState value,
          $Res Function(_AddCustomerBlocState) then) =
      __$AddCustomerBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      DateTime dateOfBirthChange,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      BankAccountNumber bankAccountNumber,
      Option<Either<CustomerFailure, Customer>> customerfailureOrSuccessOption,
      bool isAdding,
      bool showError});
}

/// @nodoc
class __$AddCustomerBlocStateCopyWithImpl<$Res>
    extends _$AddCustomerBlocStateCopyWithImpl<$Res>
    implements _$AddCustomerBlocStateCopyWith<$Res> {
  __$AddCustomerBlocStateCopyWithImpl(
      _AddCustomerBlocState _value, $Res Function(_AddCustomerBlocState) _then)
      : super(_value, (v) => _then(v as _AddCustomerBlocState));

  @override
  _AddCustomerBlocState get _value => super._value as _AddCustomerBlocState;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirthChange = freezed,
    Object? emailAddress = freezed,
    Object? mobileNumber = freezed,
    Object? bankAccountNumber = freezed,
    Object? customerfailureOrSuccessOption = freezed,
    Object? isAdding = freezed,
    Object? showError = freezed,
  }) {
    return _then(_AddCustomerBlocState(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirthChange: dateOfBirthChange == freezed
          ? _value.dateOfBirthChange
          : dateOfBirthChange // ignore: cast_nullable_to_non_nullable
              as DateTime,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as MobileNumber,
      bankAccountNumber: bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as BankAccountNumber,
      customerfailureOrSuccessOption: customerfailureOrSuccessOption == freezed
          ? _value.customerfailureOrSuccessOption
          : customerfailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CustomerFailure, Customer>>,
      isAdding: isAdding == freezed
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddCustomerBlocState implements _AddCustomerBlocState {
  const _$_AddCustomerBlocState(
      {required this.firstName,
      required this.lastName,
      required this.dateOfBirthChange,
      required this.emailAddress,
      required this.mobileNumber,
      required this.bankAccountNumber,
      required this.customerfailureOrSuccessOption,
      required this.isAdding,
      required this.showError});

  @override

  /// This hold [firstName] value that user Enter.
  final String firstName;
  @override

  /// This hold [lastName] value that user Enter.
  final String lastName;
  @override

  /// This hold [bateOfBirthChange] value that user Enter.
  final DateTime dateOfBirthChange;
  @override

  /// This hold [emailAddress] value that user Enter.
  final EmailAddress emailAddress;
  @override

  /// This hold [mobileNumber] value that user Enter.
  final MobileNumber mobileNumber;
  @override

  /// This hold [bankAccountNumber] value that user Enter.
  final BankAccountNumber bankAccountNumber;
  @override

  /// This will use when we have some response from our `Data Sources`
  /// The reason of why Used Option class is because in some `Events` we dont have any
  /// transaction with `Data Sourses` and on that situation we can only pass `none()` function to this variable
  /// which means we dont have any response nu when we have response from `Data Sources` we will pass `some()` function
  /// and put our response to this function.
  final Option<Either<CustomerFailure, Customer>>
      customerfailureOrSuccessOption;
  @override

  /// This is a boolean type to tell us when we have transaction with `Data Sourses`.
  final bool isAdding;
  @override

  /// This is for when we have some error.
  final bool showError;

  @override
  String toString() {
    return 'AddCustomerBlocState(firstName: $firstName, lastName: $lastName, dateOfBirthChange: $dateOfBirthChange, emailAddress: $emailAddress, mobileNumber: $mobileNumber, bankAccountNumber: $bankAccountNumber, customerfailureOrSuccessOption: $customerfailureOrSuccessOption, isAdding: $isAdding, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCustomerBlocState &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirthChange, dateOfBirthChange) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.bankAccountNumber, bankAccountNumber) &&
            const DeepCollectionEquality().equals(
                other.customerfailureOrSuccessOption,
                customerfailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isAdding, isAdding) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(dateOfBirthChange),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(bankAccountNumber),
      const DeepCollectionEquality().hash(customerfailureOrSuccessOption),
      const DeepCollectionEquality().hash(isAdding),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$AddCustomerBlocStateCopyWith<_AddCustomerBlocState> get copyWith =>
      __$AddCustomerBlocStateCopyWithImpl<_AddCustomerBlocState>(
          this, _$identity);
}

abstract class _AddCustomerBlocState implements AddCustomerBlocState {
  const factory _AddCustomerBlocState(
      {required String firstName,
      required String lastName,
      required DateTime dateOfBirthChange,
      required EmailAddress emailAddress,
      required MobileNumber mobileNumber,
      required BankAccountNumber bankAccountNumber,
      required Option<Either<CustomerFailure, Customer>>
          customerfailureOrSuccessOption,
      required bool isAdding,
      required bool showError}) = _$_AddCustomerBlocState;

  @override

  /// This hold [firstName] value that user Enter.
  String get firstName;
  @override

  /// This hold [lastName] value that user Enter.
  String get lastName;
  @override

  /// This hold [bateOfBirthChange] value that user Enter.
  DateTime get dateOfBirthChange;
  @override

  /// This hold [emailAddress] value that user Enter.
  EmailAddress get emailAddress;
  @override

  /// This hold [mobileNumber] value that user Enter.
  MobileNumber get mobileNumber;
  @override

  /// This hold [bankAccountNumber] value that user Enter.
  BankAccountNumber get bankAccountNumber;
  @override

  /// This will use when we have some response from our `Data Sources`
  /// The reason of why Used Option class is because in some `Events` we dont have any
  /// transaction with `Data Sourses` and on that situation we can only pass `none()` function to this variable
  /// which means we dont have any response nu when we have response from `Data Sources` we will pass `some()` function
  /// and put our response to this function.
  Option<Either<CustomerFailure, Customer>> get customerfailureOrSuccessOption;
  @override

  /// This is a boolean type to tell us when we have transaction with `Data Sourses`.
  bool get isAdding;
  @override

  /// This is for when we have some error.
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$AddCustomerBlocStateCopyWith<_AddCustomerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
