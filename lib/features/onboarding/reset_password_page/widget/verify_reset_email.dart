import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/reset_password_page/reset_password_viewmodel.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_textfield.dart';

class VerifyResetEmail extends ViewModelWidget<ResetPasswordViewModel> {
  const VerifyResetEmail({super.key});

  @override
  Widget build(BuildContext context, ResetPasswordViewModel viewModel) {
    return Form(
      key: viewModel.verifyEmailFormKey,
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
            hint: "Enter your email",
            controller: viewModel.emailController,
            validator: Validators.emailValidator(context),
          ),
          const SizedBox(
            height: 15,
          ),
          SWDGradientButton(
            buttonName: "Verify Email",
            onPressed: () => viewModel.verifyEmail(),
          )
        ],
      ),
    );
  }
}
