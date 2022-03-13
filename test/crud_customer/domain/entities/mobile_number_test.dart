import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';

void main() {
  group('Test Mobile number value object', () {
    test("Mobile number value should return failure with a random number", () {
      /// Arrange
      const String testPhoneNumber = "123456789";

      /// Act
      MobileNumber invalidPhoneNumber = MobileNumber(testPhoneNumber);

      /// Assert
      expect(invalidPhoneNumber.value,
          const Left(InvalidPhoneNumber<String>(failedValue: testPhoneNumber)));
    });

    test(
        "Mobile number value should return value with correct type of mobile nummber",
        () {
      /// Arrange
      const String testPhoneNumber = "+31616833033";

      /// Act
      MobileNumber validPhoneNumber = MobileNumber(testPhoneNumber);

      /// Assert
      expect(validPhoneNumber.value, const Right(testPhoneNumber));
    });

    test(
        "Mobile number value should return failure with a wrong type of Mobile number via `fromJson` factory",
        () {
      /// Arrange
      const String testMobileNumber = "123456789";
      const Map<String, dynamic> testMobileNumberJson = {
        "mobileNumber": testMobileNumber
      };

      /// Act
      MobileNumber invalidMobileNumber =
          MobileNumber.fromJson(testMobileNumberJson);

      /// Assert
      expect(
          invalidMobileNumber.value,
          const Left(
              InvalidPhoneNumber<String>(failedValue: testMobileNumber)));
    });
    test(
        "Mobile number value should return value with correct type of Mobile number via `fromJson` factory",
        () {
      /// Arrange
      const String testMobileNumber = "+31616833033";
      const Map<String, dynamic> testMobileNumberJson = {
        "mobileNumber": testMobileNumber
      };

      /// Act
      MobileNumber validMobileNumber =
          MobileNumber.fromJson(testMobileNumberJson);

      /// Assert
      expect(validMobileNumber.value, const Right(testMobileNumber));
    });

    test(
        "Mobile number `toJson` method should return valid Map and should accept by `fromjson` factory",
        () {
      /// Arrange
      const String testMobileNumber = "+31616833033";
      MobileNumber validMobileNumber = MobileNumber(testMobileNumber);

      /// Act
      final toJsonResult = validMobileNumber.toJson();

      /// Assert
      expect(toJsonResult, {"mobileNumber": testMobileNumber});
      expect(json.encode(toJsonResult), '{"mobileNumber":"$testMobileNumber"}');
      expect(
          MobileNumber.fromJson(toJsonResult), MobileNumber(testMobileNumber));
    });
  });
}
