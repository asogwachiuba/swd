import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/reset_password_page/reset_password_viewmodel.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_textfield.dart';

class VerifyNewPassword extends ViewModelWidget<ResetPasswordViewModel> {
  const VerifyNewPassword({super.key});

  @override
  Widget build(BuildContext context, ResetPasswordViewModel viewModel) {
    return Form(
      key: viewModel.passwordFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Enter your email to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              )),
          const SizedBox(
            height: 25,
          ),
          SWDTitledTextField(
              hint: "New password",
              controller: viewModel.passwordController,
              validator: Validators.passwordValidatorSignup(context),
              isPasswordVisible: viewModel.passwordIsVisibile,
              sufficIcon: InkWell(
                onTap: () => viewModel.togglePasswordVisibility(),
                child: Icon(
                  viewModel.passwordIsVisibile
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Colors.white.withOpacity(0.75),
                  size: 15,
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          SWDTitledTextField(
            hint: "Confirm new password",
            controller: viewModel.confirmPasswordontroller,
            validator: Validators.confirmPasswordValidator(
                viewModel.passwordController.text, context),
            isPasswordVisible: viewModel.confirmPasswordIsVisibile,
            sufficIcon: InkWell(
              onTap: () => viewModel.toggleConfirmPasswordVisibility(),
              child: Icon(
                viewModel.confirmPasswordIsVisibile
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: Colors.white.withOpacity(0.75),
                size: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SWDGradientButton(
            buttonName: "Reset Passwrd",
            onPressed: () => viewModel.createNewPassword(),
          )
        ],
      ),
    );
    ;
  }
}
