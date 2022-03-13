import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// MobileNumber value object that extends from [ValueObject] interface.
class MobileNumber extends ValueObject<String> {
  /// Mobile number value that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [MobileNumber] [factory] that call [Cunstractor] after validation.
  factory MobileNumber(String email) {
    return MobileNumber._(validateMobileNumber(email));
  }

  /// [MobileNumber] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const MobileNumber._(this.value);

  /// Mobile number validator by using [RegExp] package.
  static Either<ValueFailure<String>, String> validateMobileNumber(
      String mobileNumber) {
    /// RegExp pattern for valid mobile number;
    String pattern = r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$';
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(mobileNumber)) {
      return Right(mobileNumber);
    } else {
      return Left(ValueFailure.invalidPhoneNumber(failedValue: mobileNumber));
    }
  }
}
