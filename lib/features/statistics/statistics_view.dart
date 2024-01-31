import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/statistics/statistics_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';

class StatisticsView extends StackedView<StatisticsViewModel> {
  const StatisticsView({super.key});

  @override
  Widget builder(
      BuildContext context, StatisticsViewModel viewModel, Widget? child) {
    return const Scaffold(
      backgroundColor: SWDColors.black,
      body: Center(
        child: Text(
          "THIS IS THE STATISTICS SCREEN",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  StatisticsViewModel viewModelBuilder(BuildContext context) =>
      StatisticsViewModel();
}
