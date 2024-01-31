import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/dashboard/dashboard_viewmodel.dart';
import 'package:swd/features/dashboard/widgets/dashboard_news_update.dart';
import 'package:swd/features/dashboard/widgets/dashboard_quick_actions.dart';
import 'package:swd/features/dashboard/widgets/dashboard_user_info.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/swd_colors.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({super.key});

  @override
  Widget builder(
      BuildContext context, DashboardViewModel viewModel, Widget? child) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment(-0.98, 0.22),
            end: Alignment(0.98, -0.22),
            colors: [Color(0xFFEF5757), Color(0xFFEFA057)],
          ),
        ),
        child: Assets.icons.icChat.svg(height: 32, width: 32),
      ),
      backgroundColor: SWDColors.black,
      body: SizedBox.expand(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: const [
              DashboardUserInfo(),
              SizedBox(
                height: 25,
              ),
              DashboardQuickActions(),
              SizedBox(
                height: 25,
              ),
              DashboardNewsUpdate(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) =>
      DashboardViewModel();

  @override
  void onViewModelReady(DashboardViewModel viewModel) {
    viewModel.onReady();
    super.onViewModelReady(viewModel);
  }
}
