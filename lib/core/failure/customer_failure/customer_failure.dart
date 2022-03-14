import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_failure.freezed.dart';

// Customer failure is an [Union] class that hold all of the failure that may happen.
@freezed
abstract class CustomerFailure with _$CustomerFailure {
  /// Our customers must be unique in database: By Firstname, Lastname and DateOfBirth;
  const factory CustomerFailure.customerExist() = CustomerExist;

  /// Email must be unique in the database.
  const factory CustomerFailure.emailHasBeenTaken() = EmailHasBeenTaken;

  /// When Unexpexted [Exeption] happend.
  const factory CustomerFailure.unexpextedFailure(String message) =
      UnexpextedFailure;

  /// When cannot find Customer
  const factory CustomerFailure.customerNoFound() = CustomerNoFound;
}
