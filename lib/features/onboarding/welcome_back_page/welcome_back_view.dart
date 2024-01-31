import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/welcome_back_page/welcome_back_viewmodel.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/utils/validators.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';
import 'package:swd/widgets/swd_loading_view.dart';
import 'package:swd/widgets/swd_textfield.dart';

class WelcomeBackView extends StackedView<WelcomeBackViewModel> {
  const WelcomeBackView({super.key});

  @override
  Widget builder(
      BuildContext context, WelcomeBackViewModel viewModel, Widget? child) {
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
                    height: size.height * 0.15,
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
                  Text("Welcome back ${viewModel.firstName}",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  SWDTitledTextField(
                    title: "Password",
                    controller: viewModel.passwordController,
                    isReadOnly: false,
                    isPasswordVisible: viewModel.passwordIsVisibile,
                    validator: Validators.passwordValidator(context),
                    hint: "Enter Password",
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
                    onPressed: () => viewModel.siginIn(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Not ${viewModel.firstName}? ",
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: SWDColors.borderSub,
                          )),
                      TextSpan(
                        text: "Switch account",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            viewModel.switchAccount();
                          },
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: SWDColors.redWine,
                        ),
                      )
                    ]),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () => viewModel.userFaceAuthentication(),
                    child: Column(
                      children: [
                        Assets.icons.icFaceId.svg(),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Face ID",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Faace authentication background
          (viewModel.isAuthenticating || viewModel.isBusy)
              ? const SWDLoadingView()
              : const SizedBox(),
        ],
      ),
    );
  }

  @override
  WelcomeBackViewModel viewModelBuilder(BuildContext context) =>
      WelcomeBackViewModel();

  @override
  void onViewModelReady(WelcomeBackViewModel viewModel) {
    viewModel.onReady();
    super.onViewModelReady(viewModel);
  }
}
