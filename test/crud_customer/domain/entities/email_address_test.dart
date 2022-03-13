import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';

void main() {
  group('Test Email address value object', () {
    test(
        "Email address value should return failure with an email without '.com'",
        () {
      /// Arrange
      const String testEmail = "test@gmail";

      /// Act
      EmailAddress invalidEmailAddress = EmailAddress(testEmail);

      /// Assert
      expect(invalidEmailAddress.value,
          const Left(InvalidEmail<String>(failedValue: testEmail)));
    });
    test("Email address value should return failure with an email without '@'",
        () {
      /// Arrange
      const String testEmail = "testgmail.com";

      /// Act
      EmailAddress invalidEmailAddress = EmailAddress(testEmail);

      /// Assert
      expect(invalidEmailAddress.value,
          const Left(InvalidEmail<String>(failedValue: testEmail)));
    });

    test("Email address value should return value with correct type of Email",
        () {
      /// Arrange
      const String testEmail = "kermani@gmail.com";

      /// Act
      EmailAddress validEmailAddress = EmailAddress(testEmail);

      /// Assert
      expect(validEmailAddress.value, const Right(testEmail));
    });
    test(
        "Email address value should return failure with a wrong email type via `fromJson` factory",
        () {
      /// Arrange
      const String testEmailAddress = "testgmail.com";
      const Map<String, dynamic> testEmailAddressJson = {
        "email": testEmailAddress
      };

      /// Act
      EmailAddress invalidEmailAddress =
          EmailAddress.fromJson(testEmailAddressJson);

      /// Assert
      expect(invalidEmailAddress.value,
          const Left(InvalidEmail<String>(failedValue: testEmailAddress)));
    });
    test(
        "Email address value should return value with correct type of Email address via `fromJson` factory",
        () {
      /// Arrange
      const String testEmailAddress = "kermani@gmail.com";
      const Map<String, dynamic> testEmailAddressJson = {
        "email": testEmailAddress
      };

      /// Act
      EmailAddress validEmailAddress =
          EmailAddress.fromJson(testEmailAddressJson);

      /// Assert
      expect(validEmailAddress.value, const Right(testEmailAddress));
    });

    test(
        "Email address `toJson` method should return valid Map and should accept by `fromjson` factory",
        () {
      /// Arrange
      const String testEmailAddress = "kermani@gmail.com";
      EmailAddress validEmailAddress = EmailAddress(testEmailAddress);

      /// Act
      final toJsonResult = validEmailAddress.toJson();

      /// Assert
      expect(toJsonResult, {"email": testEmailAddress});
      expect(json.encode(toJsonResult), '{"email":"$testEmailAddress"}');
      expect(
          EmailAddress.fromJson(toJsonResult), EmailAddress(testEmailAddress));
    });
  });
}
