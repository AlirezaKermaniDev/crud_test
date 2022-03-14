// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomerFailureTearOff {
  const _$CustomerFailureTearOff();

  CustomerExist customerExist() {
    return const CustomerExist();
  }

  EmailHasBeenTaken emailHasBeenTaken() {
    return const EmailHasBeenTaken();
  }

  UnexpextedFailure unexpextedFailure(String message) {
    return UnexpextedFailure(
      message,
    );
  }

  CustomerNoFound customerNoFound() {
    return const CustomerNoFound();
  }
}

/// @nodoc
const $CustomerFailure = _$CustomerFailureTearOff();

/// @nodoc
mixin _$CustomerFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerExist,
    required TResult Function() emailHasBeenTaken,
    required TResult Function(String message) unexpextedFailure,
    required TResult Function() customerNoFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerExist value) customerExist,
    required TResult Function(EmailHasBeenTaken value) emailHasBeenTaken,
    required TResult Function(UnexpextedFailure value) unexpextedFailure,
    required TResult Function(CustomerNoFound value) customerNoFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFailureCopyWith<$Res> {
  factory $CustomerFailureCopyWith(
          CustomerFailure value, $Res Function(CustomerFailure) then) =
      _$CustomerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerFailureCopyWithImpl<$Res>
    implements $CustomerFailureCopyWith<$Res> {
  _$CustomerFailureCopyWithImpl(this._value, this._then);

  final CustomerFailure _value;
  // ignore: unused_field
  final $Res Function(CustomerFailure) _then;
}

/// @nodoc
abstract class $CustomerExistCopyWith<$Res> {
  factory $CustomerExistCopyWith(
          CustomerExist value, $Res Function(CustomerExist) then) =
      _$CustomerExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerExistCopyWithImpl<$Res>
    extends _$CustomerFailureCopyWithImpl<$Res>
    implements $CustomerExistCopyWith<$Res> {
  _$CustomerExistCopyWithImpl(
      CustomerExist _value, $Res Function(CustomerExist) _then)
      : super(_value, (v) => _then(v as CustomerExist));

  @override
  CustomerExist get _value => super._value as CustomerExist;
}

/// @nodoc

class _$CustomerExist with DiagnosticableTreeMixin implements CustomerExist {
  const _$CustomerExist();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerFailure.customerExist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerFailure.customerExist'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomerExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerExist,
    required TResult Function() emailHasBeenTaken,
    required TResult Function(String message) unexpextedFailure,
    required TResult Function() customerNoFound,
  }) {
    return customerExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
  }) {
    return customerExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
    required TResult orElse(),
  }) {
    if (customerExist != null) {
      return customerExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerExist value) customerExist,
    required TResult Function(EmailHasBeenTaken value) emailHasBeenTaken,
    required TResult Function(UnexpextedFailure value) unexpextedFailure,
    required TResult Function(CustomerNoFound value) customerNoFound,
  }) {
    return customerExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
  }) {
    return customerExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
    required TResult orElse(),
  }) {
    if (customerExist != null) {
      return customerExist(this);
    }
    return orElse();
  }
}

abstract class CustomerExist implements CustomerFailure {
  const factory CustomerExist() = _$CustomerExist;
}

/// @nodoc
abstract class $EmailHasBeenTakenCopyWith<$Res> {
  factory $EmailHasBeenTakenCopyWith(
          EmailHasBeenTaken value, $Res Function(EmailHasBeenTaken) then) =
      _$EmailHasBeenTakenCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailHasBeenTakenCopyWithImpl<$Res>
    extends _$CustomerFailureCopyWithImpl<$Res>
    implements $EmailHasBeenTakenCopyWith<$Res> {
  _$EmailHasBeenTakenCopyWithImpl(
      EmailHasBeenTaken _value, $Res Function(EmailHasBeenTaken) _then)
      : super(_value, (v) => _then(v as EmailHasBeenTaken));

  @override
  EmailHasBeenTaken get _value => super._value as EmailHasBeenTaken;
}

/// @nodoc

class _$EmailHasBeenTaken
    with DiagnosticableTreeMixin
    implements EmailHasBeenTaken {
  const _$EmailHasBeenTaken();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerFailure.emailHasBeenTaken()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerFailure.emailHasBeenTaken'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailHasBeenTaken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerExist,
    required TResult Function() emailHasBeenTaken,
    required TResult Function(String message) unexpextedFailure,
    required TResult Function() customerNoFound,
  }) {
    return emailHasBeenTaken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
  }) {
    return emailHasBeenTaken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
    required TResult orElse(),
  }) {
    if (emailHasBeenTaken != null) {
      return emailHasBeenTaken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerExist value) customerExist,
    required TResult Function(EmailHasBeenTaken value) emailHasBeenTaken,
    required TResult Function(UnexpextedFailure value) unexpextedFailure,
    required TResult Function(CustomerNoFound value) customerNoFound,
  }) {
    return emailHasBeenTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
  }) {
    return emailHasBeenTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
    required TResult orElse(),
  }) {
    if (emailHasBeenTaken != null) {
      return emailHasBeenTaken(this);
    }
    return orElse();
  }
}

abstract class EmailHasBeenTaken implements CustomerFailure {
  const factory EmailHasBeenTaken() = _$EmailHasBeenTaken;
}

/// @nodoc
abstract class $UnexpextedFailureCopyWith<$Res> {
  factory $UnexpextedFailureCopyWith(
          UnexpextedFailure value, $Res Function(UnexpextedFailure) then) =
      _$UnexpextedFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UnexpextedFailureCopyWithImpl<$Res>
    extends _$CustomerFailureCopyWithImpl<$Res>
    implements $UnexpextedFailureCopyWith<$Res> {
  _$UnexpextedFailureCopyWithImpl(
      UnexpextedFailure _value, $Res Function(UnexpextedFailure) _then)
      : super(_value, (v) => _then(v as UnexpextedFailure));

  @override
  UnexpextedFailure get _value => super._value as UnexpextedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnexpextedFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpextedFailure
    with DiagnosticableTreeMixin
    implements UnexpextedFailure {
  const _$UnexpextedFailure(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerFailure.unexpextedFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerFailure.unexpextedFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnexpextedFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnexpextedFailureCopyWith<UnexpextedFailure> get copyWith =>
      _$UnexpextedFailureCopyWithImpl<UnexpextedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerExist,
    required TResult Function() emailHasBeenTaken,
    required TResult Function(String message) unexpextedFailure,
    required TResult Function() customerNoFound,
  }) {
    return unexpextedFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
  }) {
    return unexpextedFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
    required TResult orElse(),
  }) {
    if (unexpextedFailure != null) {
      return unexpextedFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerExist value) customerExist,
    required TResult Function(EmailHasBeenTaken value) emailHasBeenTaken,
    required TResult Function(UnexpextedFailure value) unexpextedFailure,
    required TResult Function(CustomerNoFound value) customerNoFound,
  }) {
    return unexpextedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
  }) {
    return unexpextedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
    required TResult orElse(),
  }) {
    if (unexpextedFailure != null) {
      return unexpextedFailure(this);
    }
    return orElse();
  }
}

abstract class UnexpextedFailure implements CustomerFailure {
  const factory UnexpextedFailure(String message) = _$UnexpextedFailure;

  String get message;
  @JsonKey(ignore: true)
  $UnexpextedFailureCopyWith<UnexpextedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNoFoundCopyWith<$Res> {
  factory $CustomerNoFoundCopyWith(
          CustomerNoFound value, $Res Function(CustomerNoFound) then) =
      _$CustomerNoFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerNoFoundCopyWithImpl<$Res>
    extends _$CustomerFailureCopyWithImpl<$Res>
    implements $CustomerNoFoundCopyWith<$Res> {
  _$CustomerNoFoundCopyWithImpl(
      CustomerNoFound _value, $Res Function(CustomerNoFound) _then)
      : super(_value, (v) => _then(v as CustomerNoFound));

  @override
  CustomerNoFound get _value => super._value as CustomerNoFound;
}

/// @nodoc

class _$CustomerNoFound
    with DiagnosticableTreeMixin
    implements CustomerNoFound {
  const _$CustomerNoFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerFailure.customerNoFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerFailure.customerNoFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomerNoFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() customerExist,
    required TResult Function() emailHasBeenTaken,
    required TResult Function(String message) unexpextedFailure,
    required TResult Function() customerNoFound,
  }) {
    return customerNoFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
  }) {
    return customerNoFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? customerExist,
    TResult Function()? emailHasBeenTaken,
    TResult Function(String message)? unexpextedFailure,
    TResult Function()? customerNoFound,
    required TResult orElse(),
  }) {
    if (customerNoFound != null) {
      return customerNoFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerExist value) customerExist,
    required TResult Function(EmailHasBeenTaken value) emailHasBeenTaken,
    required TResult Function(UnexpextedFailure value) unexpextedFailure,
    required TResult Function(CustomerNoFound value) customerNoFound,
  }) {
    return customerNoFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
  }) {
    return customerNoFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerExist value)? customerExist,
    TResult Function(EmailHasBeenTaken value)? emailHasBeenTaken,
    TResult Function(UnexpextedFailure value)? unexpextedFailure,
    TResult Function(CustomerNoFound value)? customerNoFound,
    required TResult orElse(),
  }) {
    if (customerNoFound != null) {
      return customerNoFound(this);
    }
    return orElse();
  }
}

abstract class CustomerNoFound implements CustomerFailure {
  const factory CustomerNoFound() = _$CustomerNoFound;
}
