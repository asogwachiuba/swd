import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/onboarding/start_page/start_viewmodel.dart';
import 'package:swd/widgets/swd_border_button.dart';
import 'package:swd/widgets/swd_custom_view.dart';
import 'package:swd/widgets/swd_gradient_button.dart';

class StartView extends StackedView<StartViewModel> {
  const StartView({super.key});

  @override
  Widget builder(
      BuildContext context, StartViewModel viewModel, Widget? child) {
    return SWDCustomView(
        child: Column(
      children: [
        const Spacer(
          flex: 5,
        ),
        Container(
          width: 156,
          height: 156,
          decoration: ShapeDecoration(
            color: const Color(0xFF1E1E1E),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
        SWDGradientButton(
          buttonName: 'Create an account',
          onPressed: () => viewModel.toCreateAccountView(),
        ),
        const SizedBox(
          height: 10,
        ),
        SWDBorderButton(
          buttonName: "Sign In",
          onPressed: () => viewModel.toLoginView(),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ));
  }

  @override
  StartViewModel viewModelBuilder(BuildContext context) => StartViewModel();

  @override
  void onViewModelReady(StartViewModel viewModel) => viewModel.onReady();
}
