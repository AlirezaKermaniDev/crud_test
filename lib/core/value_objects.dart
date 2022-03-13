import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'failure/value_failure/value_failure.dart';

/// ValueObject interface is for creating valus that must be [Validate] like `Email address` or `Phone number` and ... .
@immutable
abstract class ValueObject<T> {
  /// ValueObject defult constractor.
  const ValueObject();

  /// This [value] getter hold our value that is maybe [valid] or [Invalid].
  /// If the [value] is valid then data will be store in the [Right] of the [Either] as [ValueFailure].
  /// If the [value] is not valid data will be store in the [Left] of the [Either] as [T].
  Either<ValueFailure<T>, T> get value;

  /// Realize that the value is valid or not.
  bool isValid() => value.isRight();

  /// This function return ther value but if the value was [Invalid] will be throw an [Exception];
  T getDataOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((l) => throw Exception("Unexpected Error"), id);
  }

  /// This is for [Equality].
  /// When we want to [Comparison] two instance of this object with `==` operator.
  /// this method check if their `fileds` are [Equal] then pass `True` if not then pass `False`.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
