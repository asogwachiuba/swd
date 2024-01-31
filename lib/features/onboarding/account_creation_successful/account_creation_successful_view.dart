import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/account_creation_successful/account_creation_successful_viewmodel.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';

class AccountCreationSuccessfulView
    extends StackedView<AccountCreationSuccessfulViewModel> {
  const AccountCreationSuccessfulView({super.key});

  @override
  Widget builder(BuildContext context,
      AccountCreationSuccessfulViewModel viewModel, Widget? child) {
    return SWDCustomView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.icGreenTick.svg(
            height: 123,
            width: 160,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "You are all set",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Your account has been created successfully",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SWDGradientButton(
            buttonName: "Proceed to home",
            onPressed: () {
              viewModel.proceedToHome();
            },
          )
        ],
      ),
    );
  }

  @override
  AccountCreationSuccessfulViewModel viewModelBuilder(BuildContext context) =>
      AccountCreationSuccessfulViewModel();
}
