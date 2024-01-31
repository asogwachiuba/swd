import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/services/services_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';

class ServicesView extends StackedView<ServicesViewModel> {
  const ServicesView({super.key});

  @override
  Widget builder(
      BuildContext context, ServicesViewModel viewModel, Widget? child) {
    return const Scaffold(
      backgroundColor: SWDColors.black,
      body: Center(
        child: Text(
          "THIS IS THE SERVICE SCREEN",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  ServicesViewModel viewModelBuilder(BuildContext context) =>
      ServicesViewModel();
}
