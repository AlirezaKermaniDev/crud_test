import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mc_crud_test/features/crud_customer/presentation/bloc/add_customer_bloc/add_customer_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../core/formaters.dart';
import '../../../../../injection/injection.dart';
import '../../widgets/snack_bar_widget.dart';
import 'dart:async';

class AddCustomerFormWidget extends StatelessWidget {
  AddCustomerFormWidget({Key? key}) : super(key: key) {
    /// This is for make sure our state is initial when user open to this form
    getIt<AddCustomerBloc>().emit(AddCustomerBlocState.initial());
  }

  /// Variables
  final TextEditingController dateOfBirthFieldController =
      TextEditingController(text: DateFormat.yMMMMd().format(DateTime.now()));

  /// Mobile text Formatter
  final MaskTextInputFormatter mobileNumberTextFormatter =
      mobileNumberFormatter();

  /// Bank account text formatter
  final MaskTextInputFormatter bankAccountNumberTextFormatter =
      bankAccountNumberFormatter();

  /// Debounce for controll the text fields onChange
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddCustomerBloc, AddCustomerBlocState>(
        listener: _addCustomerBlocListener, builder: _addCustomerBlocBuilder);
  }

  /// BLoC Listener
  void _addCustomerBlocListener(context, state) {
    _changeDateOfBirthControllerText(state);
    _onResponse(state, context);
  }

  /// BLoC Builder
  Widget _addCustomerBlocBuilder(context, state) {
    if (state.isAdding) {
      return _loadingWidget();
    }
    return _addCustomerFormWidget(context, state);
  }

  Center _loadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  /// Add Customer text fields Form
  Form _addCustomerFormWidget(context, state) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        child: ListView(
          padding: const EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
          children: [
            _firstNameTextFieldWidget(context),
            _lastNameTextFieldWidget(context),
            _dateOfBirthFieldWidget(context, state),
            _emailAddressTextFieldWidget(context, state),
            _mobileNumberTextFieldWidget(context, state),
            _bankAccountTextFieldwidget(context, state),
            _addCustomerButtonWidget(context),
          ],
        ));
  }

  /// Add customer buttom Widget
  Padding _addCustomerButtonWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 45.0,
        child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<AddCustomerBloc>(context)
                  .add(const AddCustomerBlocEvent.addCustomerPressed());
            },
            child: Text(
              "Add",
              style: Theme.of(context).textTheme.button,
            )),
      ),
    );
  }

  /// When add customer usecase call then manage the response here with [customerfailureOrSuccessOption] field.
  void _onResponse(AddCustomerBlocState state, BuildContext context) {
    state.customerfailureOrSuccessOption.fold(
        () => null,
        (result) => {
              result.fold((failure) {
                failure.maybeMap(
                    customerExist: (value) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(snackBar("Customer Exist"));
                    },
                    emailHasBeenTaken: (value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          snackBar("Email address has been Taken"));
                    },
                    orElse: () => null);
              }, (customer) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(snackBar("Customer added"));
                Navigator.pop(context);
              })
            });
  }

  String _changeDateOfBirthControllerText(AddCustomerBlocState state) {
    return dateOfBirthFieldController.text =
        DateFormat.yMMMMd().format(state.dateOfBirth);
  }

  /// BankAccount text field Widget builder
  Padding _bankAccountTextFieldwidget(
      BuildContext context, AddCustomerBlocState state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: [bankAccountNumberTextFormatter],
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: (value) => _textFieldsOnChange(
          context,
          AddCustomerBlocEvent.bankAccountNumberChanged(
              value.replaceAll("-", "").replaceAll(" ", "")),
        ),
        keyboardType: TextInputType.number,
        validator: (_) {
          return BlocProvider.of<AddCustomerBloc>(context)
              .state
              .bankAccountNumber
              .value
              .fold(
                  (failure) => failure.maybeMap(
                      invalidBankAccountNumber: (value) =>
                          "Invalid Bank account number",
                      orElse: () => null),
                  (email) => null);
        },
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.account_balance_rounded),
            labelText: "Bank account number"),
      ),
    );
  }

  /// MobileNumber text field Widget builder
  Padding _mobileNumberTextFieldWidget(
      BuildContext context, AddCustomerBlocState state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        inputFormatters: [mobileNumberTextFormatter],
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: (value) => _textFieldsOnChange(
          context,
          AddCustomerBlocEvent.mobileNumberChanged(value),
        ),
        keyboardType: TextInputType.phone,
        validator: (_) => BlocProvider.of<AddCustomerBloc>(context)
            .state
            .mobileNumber
            .value
            .fold(
                (failure) => failure.maybeMap(
                    invalidPhoneNumber: (value) => "Invalid Mobile number",
                    orElse: () => null),
                (email) => null),
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.phone_android_rounded),
            labelText: "Mobile number"),
      ),
    );
  }

  /// EmailAddress text field Widget builder
  Padding _emailAddressTextFieldWidget(
      BuildContext context, AddCustomerBlocState state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: (value) => _textFieldsOnChange(
          context,
          AddCustomerBlocEvent.emailAddressChanged(value),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (_) => BlocProvider.of<AddCustomerBloc>(context)
            .state
            .emailAddress
            .value
            .fold(
                (failure) => failure.maybeMap(
                    invalidEmail: (value) => "Invalid Email",
                    orElse: () => null),
                (email) => null),
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email_rounded), labelText: "Email address"),
      ),
    );
  }

  /// DateOfBirth text field Widget
  Padding _dateOfBirthFieldWidget(
      BuildContext context, AddCustomerBlocState state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTap: () async {
          FocusScope.of(context).requestFocus(FocusNode());

          final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: state.dateOfBirth,
              firstDate: DateTime(2015, 8),
              lastDate: DateTime(2101));
          if (picked != null && picked != state.dateOfBirth) {
            BlocProvider.of<AddCustomerBloc>(context)
                .add(AddCustomerBlocEvent.dateOfBirthChange(picked));
          }
        },
        controller: dateOfBirthFieldController,
        style: Theme.of(context).textTheme.subtitle2,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.date_range_rounded),
            labelText: "Date of birth"),
      ),
    );
  }

  /// LastName text field Widget
  Padding _lastNameTextFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: (value) => _textFieldsOnChange(
          context,
          AddCustomerBlocEvent.lastNameChanged(value),
        ),
        validator: (_) =>
            BlocProvider.of<AddCustomerBloc>(context).state.lastName.isEmpty
                ? "This field should not be empty"
                : null,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_rounded), labelText: "Last name"),
      ),
    );
  }

  /// FirstName text field Widget
  Padding _firstNameTextFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: Theme.of(context).textTheme.subtitle2,
        onChanged: (value) => _textFieldsOnChange(
          context,
          AddCustomerBlocEvent.firstNameChanged(value),
        ),
        validator: (_) =>
            BlocProvider.of<AddCustomerBloc>(context).state.firstName.isEmpty
                ? "This field should not be empty"
                : null,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person_rounded), labelText: "First name"),
      ),
    );
  }

  /// Text fields onChanges
  _textFieldsOnChange(
    BuildContext context,
    AddCustomerBlocEvent event,
  ) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 600), () {
      BlocProvider.of<AddCustomerBloc>(context).add(event);
    });
  }
}
