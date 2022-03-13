import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// Email address value object that extends from [ValueObject] interface.
class EmailAddress extends ValueObject<String> {
  /// Email value that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [EmailAddress] [factory] that call [Cunstractor] after validation.
  factory EmailAddress(String email) {
    return EmailAddress._(validateEmailAddress(email));
  }

  /// [EmailAddress] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const EmailAddress._(this.value);

  /// Email addres validator by using [EmailValidator] package.
  static Either<ValueFailure<String>, String> validateEmailAddress(
      String email) {
    if (EmailValidator.validate(email)) {
      return Right(email);
    } else {
      return Left(ValueFailure.invalidEmail(failedValue: email));
    }
  }
}
