import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

// Value Failure is an [Union] class that hold all the possible ways that a value can be Invalid.
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required String failedValue}) =
      InvalidEmail<T>;
  const factory ValueFailure.invalidPhoneNumber({required String failedValue}) =
      InvalidPhoneNumber<T>;
  const factory ValueFailure.invalidBankAccountNumber(
      {required String failedValue}) = InvalidBankAccountNumber<T>;
}
