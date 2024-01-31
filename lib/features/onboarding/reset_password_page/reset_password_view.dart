import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/core/enum/reset_password_states.dart';
import 'package:swd/features/onboarding/reset_password_page/reset_password_viewmodel.dart';
import 'package:swd/features/onboarding/reset_password_page/widget/reset_new_password.dart';
import 'package:swd/features/onboarding/reset_password_page/widget/verify_reset_email.dart';
import 'package:swd/features/onboarding/reset_password_page/widget/verify_reset_otp.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/widgets/circle_inscribed_icon.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_loading_view.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({super.key});

  @override
  Widget builder(
      BuildContext context, ResetPasswordViewModel viewModel, Widget? child) {
    Widget currentResetView() {
      logger.d("The state is ${viewModel.resetPasswordState}");
      switch (viewModel.resetPasswordState) {
        case ResetPasswordStates.emailUnverified:
          return const VerifyResetEmail();
        case ResetPasswordStates.emailVerified:
          return const VerifyResetOtp();
        case ResetPasswordStates.otpVerified:
          return const VerifyNewPassword();
      }
    }

    return SWDCustomView(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleInscribedIcon(
                  onPressed: () => viewModel.goBack(),
                  icon: Assets.icons.icX.svg(
                    color: SWDColors.borderSub,
                  ),
                ),
              ),
              Expanded(child: currentResetView()),
            ],
          ),
          viewModel.isBusy ? const SWDLoadingView() : const SizedBox(),
        ],
      ),
    );
  }

  @override
  ResetPasswordViewModel viewModelBuilder(BuildContext context) =>
      ResetPasswordViewModel();
}
