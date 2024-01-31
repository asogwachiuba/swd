import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class Validators {
  static FormFieldValidator<String> fullNameValidator(
      String errorText, BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: errorText, context),
      FormBuilderValidators.minLength(context, 3, errorText: errorText),
      FormBuilderValidators.match(context, "^[a-zA-Z0-9_ ]*\$",
          errorText: "No special characters allowed")
    ]);
  }

  static FormFieldValidator<String> emailValidator(BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(context,
          errorText: "Enter a valid email address"),
      FormBuilderValidators.email(context,
          errorText: "Enter a valid email address"),
    ]);
  }

  static FormFieldValidator<String> passwordValidator(BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.minLength(context, 8,
          errorText: "Min length required is 8"),
    ]);
  }

  static FormFieldValidator<String> passwordValidatorSignup(
      BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.minLength(context, 8,
          errorText: "Min length required is 8"),
    ]);
  }

  static FormFieldValidator<String> otpValidator(BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.minLength(context, 6,
          errorText: "Min length required is 6"),
      FormBuilderValidators.numeric(context),
    ]);
  }

  static FormFieldValidator<String> confirmPasswordValidator(
      String password, BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.match(context, password,
          errorText: "Passwords does not match")
    ]);
  }

  static FormFieldValidator<DateTime> dateValidator(
      String errorText, BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(errorText: errorText, context),
    ]);
  }

  static FormFieldValidator<String> phoneValidator(BuildContext context) {
    return FormBuilderValidators.compose([
      FormBuilderValidators.required(
          errorText: "Phone Number is required", context),
      FormBuilderValidators.minLength(
        context,
        11,
        errorText: "Min digits required is 11",
      ),
    ]);
  }
}
