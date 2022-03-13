import 'package:dartz/dartz.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/core/value_objects.dart';

/// Bank account number value object that extends from [ValueObject] interface.
class BankAccountNumber extends ValueObject<String> {
  /// Bank account number that is [String].
  @override
  final Either<ValueFailure<String>, String> value;

  /// [BankAccountNumber] default [factory] that call [Cunstractor] after validation.
  factory BankAccountNumber(String email) {
    return BankAccountNumber._(validateBankAccountNumber(email));
  }

  /// [BankAccountNumber] fromJson [factory] that call [Cunstractor] after validation.
  factory BankAccountNumber.fromJson(Map<String, dynamic> json) {
    return BankAccountNumber._(
        validateBankAccountNumber(json["bankAccountNumber"]));
  }

  /// [BankAccountNumber] [Cunstractor] that define as [Private] to make sure the only way to instace this class is from [factory].
  const BankAccountNumber._(this.value);

  /// Contvert [BankAccountNumber] to [json].
  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = <String, dynamic>{};
    json["bankAccountNumber"] = getDataOrCrash();
    return json;
  }

  /// Bank account number validator by using [RegExp].
  static Either<ValueFailure<String>, String> validateBankAccountNumber(
      String? bankAccountNumber) {
    /// RegExp pattern for valid bank account number;
    String pattern = r'^[0-9]{7,17}$';
    RegExp regExp = RegExp(pattern);

    if (bankAccountNumber != null && regExp.hasMatch(bankAccountNumber)) {
      return Right(bankAccountNumber);
    } else {
      return Left(ValueFailure.invalidBankAccountNumber(
          failedValue: bankAccountNumber.toString()));
    }
  }
}
