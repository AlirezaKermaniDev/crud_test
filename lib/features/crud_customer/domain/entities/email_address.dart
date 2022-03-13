import 'package:dartz/dartz.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// Email address value object that extends from [ValueObject] interface.
class EmailAddress extends ValueObject<String> {
  /// Email value that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [EmailAddress] default [factory] that call [Cunstractor] after validation.
  factory EmailAddress(String email) {
    return EmailAddress._(validateEmailAddress(email));
  }

  /// [EmailAddress] fromJson [factory] that call [Cunstractor] after validation.
  factory EmailAddress.fromJson(Map<String, dynamic> json) {
    return EmailAddress._(validateEmailAddress(json["email"]));
  }

  /// [EmailAddress] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const EmailAddress._(this.value);

  /// Contvert [EmailAddress] to [json].
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["email"] = getDataOrCrash();
    return json;
  }

  /// Email addres validator by using [EmailValidator] package.
  static Either<ValueFailure<String>, String> validateEmailAddress(
      String? email) {
    if (email != null && EmailValidator.validate(email)) {
      return Right(email);
    } else {
      return Left(ValueFailure.invalidEmail(failedValue: email.toString()));
    }
  }
}
