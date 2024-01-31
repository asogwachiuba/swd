import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/create_account_page/create_account_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_back_button.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_loading_view.dart';
import 'package:swd/widgets/swd_textfield.dart';

class CreateAccountView extends StackedView<CreateAccountViewModel> {
  const CreateAccountView({super.key});

  @override
  Widget builder(
      BuildContext context, CreateAccountViewModel viewModel, Widget? child) {
    return SWDCustomView(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: viewModel.formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      // Back button
                      SWDBackButton(
                        onPressed: () => viewModel.goBack(),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => viewModel.toLoginView(),
                        child: const Text(
                          "Sign in instead",
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w400,
                            color: SWDColors.redWine,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text("Create an account",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SWDTitledTextField(
                          title: "First Name",
                          controller: viewModel.firstNameController,
                          validator: Validators.fullNameValidator(
                              "Enter your first name", context),
                          hint: "First Name",
                          keyboardType: TextInputType.name,
                          onChanged: (text) => {},
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SWDTitledTextField(
                          title: "Last Name",
                          hint: "Last Name",
                          controller: viewModel.lastNameController,
                          validator: Validators.fullNameValidator(
                              "Enter your last name", context),
                          keyboardType: TextInputType.name,
                          onChanged: (text) => {},
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SWDTitledTextField(
                    title: "Phone number",
                    hint: "Enter phone number",
                    controller: viewModel.phoneController,
                    validator: Validators.phoneValidator(context),
                    keyboardType: TextInputType.number,
                    onChanged: (text) => {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SWDTitledTextField(
                    title: "Email Address",
                    hint: "Enter email address",
                    controller: viewModel.emailController,
                    validator: Validators.emailValidator(context),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (text) => {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SWDTitledTextField(
                    title: "Create Password",
                    hint: "Enter password",
                    isPasswordVisible: viewModel.passwordIsVisibile,
                    keyboardType: TextInputType.visiblePassword,
                    controller: viewModel.passwordController,
                    validator: Validators.passwordValidatorSignup(context),
                    sufficIcon: InkWell(
                      onTap: () => viewModel.togglePasswordVisibility(),
                      child: Icon(
                        viewModel.passwordIsVisibile
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.white.withOpacity(0.75),
                        size: 15,
                      ),
                    ),
                    onChanged: (text) => {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SWDTitledTextField(
                    title: "Referral Code (Optional)",
                    hint: "Enter referral code",
                    controller: viewModel.referralController,
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SWDGradientButton(
                    buttonName: 'Next',
                    onPressed: () => viewModel.next(),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: Container(
                          height: 2.5,
                          decoration: BoxDecoration(
                            color: SWDColors.darkGrey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Account information",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: SWDColors.borderSub,
                    ),
                  )
                ],
              ),
            ),
          ),
          viewModel.isBusy ? const SWDLoadingView() : const SizedBox(),
        ],
      ),
    );
  }

  @override
  CreateAccountViewModel viewModelBuilder(BuildContext context) =>
      CreateAccountViewModel();
}
