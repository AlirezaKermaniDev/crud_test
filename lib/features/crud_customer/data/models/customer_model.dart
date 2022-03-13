import 'package:hive/hive.dart';

import 'package:mc_crud_test/features/crud_customer/domain/entities/bank_account_number.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/customer_entity/customer.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/email_address.dart';
import 'package:mc_crud_test/features/crud_customer/domain/entities/mobile_number.dart';

part 'customer_model.g.dart';

/// [CustomerModel] is a model for storing data to database with [HiveObject].
/// With the help of Hive, we can save our Models in our database without converting it to any other data type.
/// And also this model implemented from [Customer] entity to make sure to we don't have any trouble with converting data.
@HiveType(typeId: 0)
class CustomerModel extends HiveObject implements Customer {
  @override
  @HiveField(0)
  String firstname;

  @override
  @HiveField(1)
  String lastname;

  @override
  @HiveField(2)
  DateTime dateOfBirth;

  @override
  @HiveField(3)
  BankAccountNumber bankAccountNumber;

  @override
  @HiveField(4)
  EmailAddress emailAddress;

  @override
  @HiveField(5)
  MobileNumber mobileNumber;

  CustomerModel({
    required this.firstname,
    required this.lastname,
    required this.dateOfBirth,
    required this.bankAccountNumber,
    required this.emailAddress,
    required this.mobileNumber,
  });

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'firstname': firstname,
        'lastname': lastname,
        'dateOfBirth': dateOfBirth.toIso8601String(),
        'mobileNumber': mobileNumber.toJson(),
        'emailAddress': emailAddress.toJson(),
        'bankAccountNumber': bankAccountNumber.toJson(),
      };

  @override
  $CustomerCopyWith<Customer> get copyWith => throw UnimplementedError();
}
