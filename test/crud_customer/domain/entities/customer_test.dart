import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/core/failure/value_failure/value_failure.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';

void main() {
  Map<String, dynamic> mockCustomerJson = <String, dynamic>{};

  setUp(() {
    mockCustomerJson = <String, dynamic>{
      "firstname": "Alireza",
      "lastname": "Kermani",
      "dateOfBirth": DateTime(2000, 1, 6).toString(),
      "mobileNumber": MobileNumber("09030604392").toJson(),
      "emailAddress": EmailAddress("kermani@gmail.com").toJson(),
      "bankAccountNumber": BankAccountNumber("1111222233334444").toJson()
    };
  });

  group('Test Customer `toJson` method should pass data to valid json', () {
    test("Customer should create from json", () {
      /// Arrange

      /// Act
      Customer customer = Customer.fromJson(mockCustomerJson);

      /// Assert
      expect(customer.firstname, "Alireza");
      expect(customer.dateOfBirth, DateTime(2000, 1, 6));
      expect(customer.emailAddress.value, const Right("kermani@gmail.com"));
    });
    test("Test Customer `toJson` method should pass data to valid json", () {
      /// Arrange
      Customer customer = Customer.fromJson(mockCustomerJson);

      /// Act
      final customerJson = customer.toJson();

      /// Assert
      expect(customerJson["firstname"], "Alireza");
      expect(
          customerJson["dateOfBirth"], DateTime(2000, 1, 6).toIso8601String());
      expect(customerJson["emailAddress"], EmailAddress("kermani@gmail.com"));
    });
  });
}
