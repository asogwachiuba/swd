import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/referrals/referrals_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';

class ReferralsView extends StackedView<ReferralsViewModel> {
  const ReferralsView({super.key});

  @override
  Widget builder(
      BuildContext context, ReferralsViewModel viewModel, Widget? child) {
    return const Scaffold(
      backgroundColor: SWDColors.black,
      body: Center(
        child: Text(
          "THIS IS THE REFERRAL SCREEN",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  ReferralsViewModel viewModelBuilder(BuildContext context) =>
      ReferralsViewModel();
}
