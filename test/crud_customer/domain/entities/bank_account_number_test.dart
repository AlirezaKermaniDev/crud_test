import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';

void main() {
  group('Test Bank account number value object', () {
    test(
        "Bank account number value should return failure with a random number via `default` factory",
        () {
      /// Arrange
      const String testBankAccountNumber = "123456";

      /// Act
      BankAccountNumber invalidBankAccountNumber =
          BankAccountNumber(testBankAccountNumber);

      /// Assert
      expect(
          invalidBankAccountNumber.value,
          const Left(InvalidBankAccountNumber<String>(
              failedValue: testBankAccountNumber)));
    });

    test(
        "Bank account number value should return value with correct type of Bank account number via `default` factory",
        () {
      /// Arrange
      const String testBankAccountNumber = "6037997466883322";

      /// Act
      BankAccountNumber validBankAccountNumber =
          BankAccountNumber(testBankAccountNumber);

      /// Assert
      expect(validBankAccountNumber.value, const Right(testBankAccountNumber));
    });

    test(
        "Bank account number value should return failure with a random number via `fromJson` factory",
        () {
      /// Arrange
      const String testBankAccountNumber = "123456";
      const Map<String, dynamic> testBankAccountNumberJson = {
        "bankAccountNumber": testBankAccountNumber
      };

      /// Act
      BankAccountNumber invalidBankAccountNumber =
          BankAccountNumber.fromJson(testBankAccountNumberJson);

      /// Assert
      expect(
          invalidBankAccountNumber.value,
          const Left(InvalidBankAccountNumber<String>(
              failedValue: testBankAccountNumber)));
    });

    test(
        "Bank account number value should return value with correct type of Bank account number via `fromJson` factory",
        () {
      /// Arrange
      const String testBankAccountNumber = "6037997466883322";
      const Map<String, dynamic> testBankAccountNumberJson = {
        "bankAccountNumber": testBankAccountNumber
      };

      /// Act
      BankAccountNumber validBankAccountNumber =
          BankAccountNumber.fromJson(testBankAccountNumberJson);

      /// Assert
      expect(validBankAccountNumber.value, const Right(testBankAccountNumber));
    });

    test(
        "Bank account number `toJson` method should return valid Map and should accept by `fromjson` factory",
        () {
      /// Arrange
      const String testBankAccountNumber = "6037997466883322";
      BankAccountNumber validBankAccountNumber =
          BankAccountNumber(testBankAccountNumber);

      /// Act
      final toJsonResult = validBankAccountNumber.toJson();

      /// Assert
      expect(toJsonResult, {"bankAccountNumber": testBankAccountNumber});
      expect(json.encode(toJsonResult),
          '{"bankAccountNumber":"$testBankAccountNumber"}');
      expect(BankAccountNumber.fromJson(toJsonResult),
          BankAccountNumber(testBankAccountNumber));
    });
  });
}
