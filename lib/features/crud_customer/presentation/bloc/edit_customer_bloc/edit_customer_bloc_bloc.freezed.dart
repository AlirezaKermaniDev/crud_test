// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditCustomerBlocEventTearOff {
  const _$EditCustomerBlocEventTearOff();

  _GetCustomerByEmail getCustomerByEmail(EmailAddress emailAddress) {
    return _GetCustomerByEmail(
      emailAddress,
    );
  }

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

  _MobileNumberChanged mobileNumberChanged(String mobileNumber) {
    return _MobileNumberChanged(
      mobileNumber,
    );
  }

  _BankAccountNumberChanged bankAccountNumberChanged(String bankAccountNumber) {
    return _BankAccountNumberChanged(
      bankAccountNumber,
    );
  }

  _EditCustomerPressed editCustomerPressed() {
    return const _EditCustomerPressed();
  }
}

/// @nodoc
const $EditCustomerBlocEvent = _$EditCustomerBlocEventTearOff();

/// @nodoc
mixin _$EditCustomerBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCustomerBlocEventCopyWith<$Res> {
  factory $EditCustomerBlocEventCopyWith(EditCustomerBlocEvent value,
          $Res Function(EditCustomerBlocEvent) then) =
      _$EditCustomerBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditCustomerBlocEventCopyWithImpl<$Res>
    implements $EditCustomerBlocEventCopyWith<$Res> {
  _$EditCustomerBlocEventCopyWithImpl(this._value, this._then);

  final EditCustomerBlocEvent _value;
  // ignore: unused_field
  final $Res Function(EditCustomerBlocEvent) _then;
}

/// @nodoc
abstract class _$GetCustomerByEmailCopyWith<$Res> {
  factory _$GetCustomerByEmailCopyWith(
          _GetCustomerByEmail value, $Res Function(_GetCustomerByEmail) then) =
      __$GetCustomerByEmailCopyWithImpl<$Res>;
  $Res call({EmailAddress emailAddress});
}

/// @nodoc
class __$GetCustomerByEmailCopyWithImpl<$Res>
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
    implements _$GetCustomerByEmailCopyWith<$Res> {
  __$GetCustomerByEmailCopyWithImpl(
      _GetCustomerByEmail _value, $Res Function(_GetCustomerByEmail) _then)
      : super(_value, (v) => _then(v as _GetCustomerByEmail));

  @override
  _GetCustomerByEmail get _value => super._value as _GetCustomerByEmail;

  @override
  $Res call({
    Object? emailAddress = freezed,
  }) {
    return _then(_GetCustomerByEmail(
      emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_GetCustomerByEmail implements _GetCustomerByEmail {
  const _$_GetCustomerByEmail(this.emailAddress);

  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'EditCustomerBlocEvent.getCustomerByEmail(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCustomerByEmail &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailAddress));

  @JsonKey(ignore: true)
  @override
  _$GetCustomerByEmailCopyWith<_GetCustomerByEmail> get copyWith =>
      __$GetCustomerByEmailCopyWithImpl<_GetCustomerByEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return getCustomerByEmail(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return getCustomerByEmail?.call(emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (getCustomerByEmail != null) {
      return getCustomerByEmail(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return getCustomerByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return getCustomerByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (getCustomerByEmail != null) {
      return getCustomerByEmail(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerByEmail implements EditCustomerBlocEvent {
  const factory _GetCustomerByEmail(EmailAddress emailAddress) =
      _$_GetCustomerByEmail;

  EmailAddress get emailAddress;
  @JsonKey(ignore: true)
  _$GetCustomerByEmailCopyWith<_GetCustomerByEmail> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
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
    return 'EditCustomerBlocEvent.firstNameChanged(firstName: $firstName)';
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
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
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
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements EditCustomerBlocEvent {
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
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
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
    return 'EditCustomerBlocEvent.lastNameChanged(lastName: $lastName)';
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
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
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
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements EditCustomerBlocEvent {
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
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
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
    return 'EditCustomerBlocEvent.dateOfBirthChange(dateOfBirth: $dateOfBirth)';
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
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return dateOfBirthChange(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return dateOfBirthChange?.call(dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
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
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return dateOfBirthChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return dateOfBirthChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (dateOfBirthChange != null) {
      return dateOfBirthChange(this);
    }
    return orElse();
  }
}

abstract class _BateOfBirthChange implements EditCustomerBlocEvent {
  const factory _BateOfBirthChange(DateTime dateOfBirth) = _$_BateOfBirthChange;

  DateTime get dateOfBirth;
  @JsonKey(ignore: true)
  _$BateOfBirthChangeCopyWith<_BateOfBirthChange> get copyWith =>
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
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
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
    return 'EditCustomerBlocEvent.mobileNumberChanged(mobileNumber: $mobileNumber)';
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
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return mobileNumberChanged(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return mobileNumberChanged?.call(mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
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
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return mobileNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return mobileNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (mobileNumberChanged != null) {
      return mobileNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _MobileNumberChanged implements EditCustomerBlocEvent {
  const factory _MobileNumberChanged(String mobileNumber) =
      _$_MobileNumberChanged;

  String get mobileNumber;
  @JsonKey(ignore: true)
  _$MobileNumberChangedCopyWith<_MobileNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BankAccountNumberChangedCopyWith<$Res> {
  factory _$BankAccountNumberChangedCopyWith(_BankAccountNumberChanged value,
          $Res Function(_BankAccountNumberChanged) then) =
      __$BankAccountNumberChangedCopyWithImpl<$Res>;
  $Res call({String bankAccountNumber});
}

/// @nodoc
class __$BankAccountNumberChangedCopyWithImpl<$Res>
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
    implements _$BankAccountNumberChangedCopyWith<$Res> {
  __$BankAccountNumberChangedCopyWithImpl(_BankAccountNumberChanged _value,
      $Res Function(_BankAccountNumberChanged) _then)
      : super(_value, (v) => _then(v as _BankAccountNumberChanged));

  @override
  _BankAccountNumberChanged get _value =>
      super._value as _BankAccountNumberChanged;

  @override
  $Res call({
    Object? bankAccountNumber = freezed,
  }) {
    return _then(_BankAccountNumberChanged(
      bankAccountNumber == freezed
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BankAccountNumberChanged implements _BankAccountNumberChanged {
  const _$_BankAccountNumberChanged(this.bankAccountNumber);

  @override
  final String bankAccountNumber;

  @override
  String toString() {
    return 'EditCustomerBlocEvent.bankAccountNumberChanged(bankAccountNumber: $bankAccountNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAccountNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.bankAccountNumber, bankAccountNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(bankAccountNumber));

  @JsonKey(ignore: true)
  @override
  _$BankAccountNumberChangedCopyWith<_BankAccountNumberChanged> get copyWith =>
      __$BankAccountNumberChangedCopyWithImpl<_BankAccountNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return bankAccountNumberChanged(bankAccountNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return bankAccountNumberChanged?.call(bankAccountNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
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
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return bankAccountNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return bankAccountNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (bankAccountNumberChanged != null) {
      return bankAccountNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _BankAccountNumberChanged implements EditCustomerBlocEvent {
  const factory _BankAccountNumberChanged(String bankAccountNumber) =
      _$_BankAccountNumberChanged;

  String get bankAccountNumber;
  @JsonKey(ignore: true)
  _$BankAccountNumberChangedCopyWith<_BankAccountNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditCustomerPressedCopyWith<$Res> {
  factory _$EditCustomerPressedCopyWith(_EditCustomerPressed value,
          $Res Function(_EditCustomerPressed) then) =
      __$EditCustomerPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditCustomerPressedCopyWithImpl<$Res>
    extends _$EditCustomerBlocEventCopyWithImpl<$Res>
    implements _$EditCustomerPressedCopyWith<$Res> {
  __$EditCustomerPressedCopyWithImpl(
      _EditCustomerPressed _value, $Res Function(_EditCustomerPressed) _then)
      : super(_value, (v) => _then(v as _EditCustomerPressed));

  @override
  _EditCustomerPressed get _value => super._value as _EditCustomerPressed;
}

/// @nodoc

class _$_EditCustomerPressed implements _EditCustomerPressed {
  const _$_EditCustomerPressed();

  @override
  String toString() {
    return 'EditCustomerBlocEvent.editCustomerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EditCustomerPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmailAddress emailAddress) getCustomerByEmail,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(DateTime dateOfBirth) dateOfBirthChange,
    required TResult Function(String mobileNumber) mobileNumberChanged,
    required TResult Function(String bankAccountNumber)
        bankAccountNumberChanged,
    required TResult Function() editCustomerPressed,
  }) {
    return editCustomerPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
  }) {
    return editCustomerPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmailAddress emailAddress)? getCustomerByEmail,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(DateTime dateOfBirth)? dateOfBirthChange,
    TResult Function(String mobileNumber)? mobileNumberChanged,
    TResult Function(String bankAccountNumber)? bankAccountNumberChanged,
    TResult Function()? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (editCustomerPressed != null) {
      return editCustomerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCustomerByEmail value) getCustomerByEmail,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_BateOfBirthChange value) dateOfBirthChange,
    required TResult Function(_MobileNumberChanged value) mobileNumberChanged,
    required TResult Function(_BankAccountNumberChanged value)
        bankAccountNumberChanged,
    required TResult Function(_EditCustomerPressed value) editCustomerPressed,
  }) {
    return editCustomerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
  }) {
    return editCustomerPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCustomerByEmail value)? getCustomerByEmail,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_BateOfBirthChange value)? dateOfBirthChange,
    TResult Function(_MobileNumberChanged value)? mobileNumberChanged,
    TResult Function(_BankAccountNumberChanged value)? bankAccountNumberChanged,
    TResult Function(_EditCustomerPressed value)? editCustomerPressed,
    required TResult orElse(),
  }) {
    if (editCustomerPressed != null) {
      return editCustomerPressed(this);
    }
    return orElse();
  }
}

abstract class _EditCustomerPressed implements EditCustomerBlocEvent {
  const factory _EditCustomerPressed() = _$_EditCustomerPressed;
}

/// @nodoc
class _$EditCustomerBlocStateTearOff {
  const _$EditCustomerBlocStateTearOff();

  _EditCustomerBlocState call(
      {required String firstName,
      required String lastName,
      required DateTime dateOfBirth,
      required EmailAddress emailAddress,
      required MobileNumber mobileNumber,
      required BankAccountNumber bankAccountNumber,
      required Option<Either<CustomerFailure, Customer>>
          customerfailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) {
    return _EditCustomerBlocState(
      firstName: firstName,
      lastName: lastName,
      dateOfBirth: dateOfBirth,
      emailAddress: emailAddress,
      mobileNumber: mobileNumber,
      bankAccountNumber: bankAccountNumber,
      customerfailureOrSuccessOption: customerfailureOrSuccessOption,
      isLoading: isLoading,
      showError: showError,
    );
  }
}

/// @nodoc
const $EditCustomerBlocState = _$EditCustomerBlocStateTearOff();

/// @nodoc
mixin _$EditCustomerBlocState {
  /// This hold [firstName] value that user Enter.
  String get firstName => throw _privateConstructorUsedError;

  /// This hold [lastName] value that user Enter.
  String get lastName => throw _privateConstructorUsedError;

  /// This hold [bateOfBirthChange] value that user Enter.
  DateTime get dateOfBirth => throw _privateConstructorUsedError;

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
  bool get isLoading => throw _privateConstructorUsedError;

  /// This is for when we have some error.
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditCustomerBlocStateCopyWith<EditCustomerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCustomerBlocStateCopyWith<$Res> {
  factory $EditCustomerBlocStateCopyWith(EditCustomerBlocState value,
          $Res Function(EditCustomerBlocState) then) =
      _$EditCustomerBlocStateCopyWithImpl<$Res>;
  $Res call(
      {String firstName,
      String lastName,
      DateTime dateOfBirth,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      BankAccountNumber bankAccountNumber,
      Option<Either<CustomerFailure, Customer>> customerfailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$EditCustomerBlocStateCopyWithImpl<$Res>
    implements $EditCustomerBlocStateCopyWith<$Res> {
  _$EditCustomerBlocStateCopyWithImpl(this._value, this._then);

  final EditCustomerBlocState _value;
  // ignore: unused_field
  final $Res Function(EditCustomerBlocState) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? emailAddress = freezed,
    Object? mobileNumber = freezed,
    Object? bankAccountNumber = freezed,
    Object? customerfailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
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
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$EditCustomerBlocStateCopyWith<$Res>
    implements $EditCustomerBlocStateCopyWith<$Res> {
  factory _$EditCustomerBlocStateCopyWith(_EditCustomerBlocState value,
          $Res Function(_EditCustomerBlocState) then) =
      __$EditCustomerBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstName,
      String lastName,
      DateTime dateOfBirth,
      EmailAddress emailAddress,
      MobileNumber mobileNumber,
      BankAccountNumber bankAccountNumber,
      Option<Either<CustomerFailure, Customer>> customerfailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class __$EditCustomerBlocStateCopyWithImpl<$Res>
    extends _$EditCustomerBlocStateCopyWithImpl<$Res>
    implements _$EditCustomerBlocStateCopyWith<$Res> {
  __$EditCustomerBlocStateCopyWithImpl(_EditCustomerBlocState _value,
      $Res Function(_EditCustomerBlocState) _then)
      : super(_value, (v) => _then(v as _EditCustomerBlocState));

  @override
  _EditCustomerBlocState get _value => super._value as _EditCustomerBlocState;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? dateOfBirth = freezed,
    Object? emailAddress = freezed,
    Object? mobileNumber = freezed,
    Object? bankAccountNumber = freezed,
    Object? customerfailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_EditCustomerBlocState(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
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
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EditCustomerBlocState implements _EditCustomerBlocState {
  const _$_EditCustomerBlocState(
      {required this.firstName,
      required this.lastName,
      required this.dateOfBirth,
      required this.emailAddress,
      required this.mobileNumber,
      required this.bankAccountNumber,
      required this.customerfailureOrSuccessOption,
      required this.isLoading,
      required this.showError});

  @override

  /// This hold [firstName] value that user Enter.
  final String firstName;
  @override

  /// This hold [lastName] value that user Enter.
  final String lastName;
  @override

  /// This hold [bateOfBirthChange] value that user Enter.
  final DateTime dateOfBirth;
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
  final bool isLoading;
  @override

  /// This is for when we have some error.
  final bool showError;

  @override
  String toString() {
    return 'EditCustomerBlocState(firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, emailAddress: $emailAddress, mobileNumber: $mobileNumber, bankAccountNumber: $bankAccountNumber, customerfailureOrSuccessOption: $customerfailureOrSuccessOption, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditCustomerBlocState &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.bankAccountNumber, bankAccountNumber) &&
            const DeepCollectionEquality().equals(
                other.customerfailureOrSuccessOption,
                customerfailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(bankAccountNumber),
      const DeepCollectionEquality().hash(customerfailureOrSuccessOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$EditCustomerBlocStateCopyWith<_EditCustomerBlocState> get copyWith =>
      __$EditCustomerBlocStateCopyWithImpl<_EditCustomerBlocState>(
          this, _$identity);
}

abstract class _EditCustomerBlocState implements EditCustomerBlocState {
  const factory _EditCustomerBlocState(
      {required String firstName,
      required String lastName,
      required DateTime dateOfBirth,
      required EmailAddress emailAddress,
      required MobileNumber mobileNumber,
      required BankAccountNumber bankAccountNumber,
      required Option<Either<CustomerFailure, Customer>>
          customerfailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) = _$_EditCustomerBlocState;

  @override

  /// This hold [firstName] value that user Enter.
  String get firstName;
  @override

  /// This hold [lastName] value that user Enter.
  String get lastName;
  @override

  /// This hold [bateOfBirthChange] value that user Enter.
  DateTime get dateOfBirth;
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
  bool get isLoading;
  @override

  /// This is for when we have some error.
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$EditCustomerBlocStateCopyWith<_EditCustomerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
