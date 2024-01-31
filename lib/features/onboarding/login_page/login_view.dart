import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/login_page/login_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_loading_view.dart';
import 'package:swd/widgets/swd_textfield.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key});

  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    final size = MediaQuery.of(context).size;

    return SWDCustomView(
        child: Stack(
      children: [
        Form(
          key: viewModel.formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: SWDColors.grey,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text("Welcome back 👋🏾",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 35,
                ),
                SWDTitledTextField(
                  title: "Email address",
                  controller: viewModel.emailController,
                  isReadOnly: false,
                  onChanged: (email) {},
                  validator: Validators.emailValidator(context),
                  hint: "Enter Email address",
                ),
                const SizedBox(
                  height: 25,
                ),
                SWDTitledTextField(
                  title: "Password",
                  controller: viewModel.passwordController,
                  isReadOnly: false,
                  onChanged: (password) {},
                  isPasswordVisible: viewModel.passwordIsVisibile,
                  hint: "Enter Password",
                  validator: Validators.passwordValidator(context),
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
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () => viewModel.toResetPassword(),
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: SWDColors.borderSub,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SWDGradientButton(
                  buttonName: 'Sign In',
                  onPressed: () => viewModel.signIn(),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                        text: "I don't have an account,",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: SWDColors.borderSub,
                        )),
                    TextSpan(
                      text: "Create account",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          viewModel.toCreateAccountView();
                        },
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: SWDColors.redWine,
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
        viewModel.isBusy ? const SWDLoadingView() : const SizedBox(),
      ],
    ));
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
