import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// MobileNumber value object that extends from [ValueObject] interface.
class MobileNumber extends ValueObject<String> {
  /// Mobile number value that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [MobileNumber] default [factory] that call [Cunstractor] after validation.
  factory MobileNumber(String mobile) {
    return MobileNumber._(validateMobileNumber(mobile));
  }

  /// [MobileNumber] fromJson [factory] that call [Cunstractor] after validation.
  factory MobileNumber.fromJson(Map<String, dynamic> json) {
    return MobileNumber._(validateMobileNumber(json["mobileNumber"]));
  }

  /// [MobileNumber] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const MobileNumber._(this.value);

  /// Contvert [MobileNumber] to [json].
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["mobileNumber"] = getDataOrCrash();
    return json;
  }

  /// Mobile number validator by using [RegExp].
  static Either<ValueFailure<String>, String> validateMobileNumber(
      String? mobileNumber) {
    /// RegExp pattern for valid mobile number;
    String pattern =
        r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$';
    RegExp regExp = RegExp(pattern);

    if (mobileNumber != null && regExp.hasMatch(mobileNumber)) {
      return Right(mobileNumber);
    } else {
      return Left(ValueFailure.invalidPhoneNumber(
          failedValue: mobileNumber.toString()));
    }
  }
}
