import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';

part 'customer.freezed.dart';
part 'customer.g.dart';

@freezed
abstract class Customer with _$Customer {
  const factory Customer(
      {required String firstname,
      required String lastname,
      required DateTime dateOfBirth,
      required MobileNumber mobileNumber,
      required EmailAddress emailAddress,
      required BankAccountNumber bankAccountNumber}) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
