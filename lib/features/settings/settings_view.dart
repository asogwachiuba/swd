import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/settings/settings_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/widgets/swd_loading_view.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({super.key});

  @override
  Widget builder(
      BuildContext context, SettingsViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: SWDColors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "THIS IS THE SETTINGS SCREEN\n\n\nClick the button below to logout",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () => viewModel.logOut(),
                  child: const Icon(
                    Icons.power_off_outlined,
                    size: 100,
                    color: SWDColors.redWine,
                  ),
                )
              ],
            ),
          ),
          viewModel.isBusy ? const SWDLoadingView() : const SizedBox()
        ],
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(BuildContext context) =>
      SettingsViewModel();
}
