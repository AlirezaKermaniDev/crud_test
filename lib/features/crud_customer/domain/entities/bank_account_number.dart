import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// Bank account number value object that extends from [ValueObject] interface.
class BankAccountNumber extends ValueObject<String> {
  /// Bank account number that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [BankAccountNumber] [factory] that call [Cunstractor] after validation.
  factory BankAccountNumber(String email) {
    return BankAccountNumber._(validateMobileNumber(email));
  }

  /// [BankAccountNumber] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const BankAccountNumber._(this.value);

  /// Bank account number validator by using [RegExp] package.
  static Either<ValueFailure<String>, String> validateMobileNumber(
      String bankAccountNumber) {
    /// RegExp pattern for valid bank account number;
    String pattern = r'^\w{1,17}$';
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(bankAccountNumber)) {
      return Right(bankAccountNumber);
    } else {
      return Left(ValueFailure.invalidBankAccountNumber(
          failedValue: bankAccountNumber));
    }
  }
}
