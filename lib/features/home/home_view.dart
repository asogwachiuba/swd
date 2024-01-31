import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/core/enum/home_tabs.dart';
import 'package:swd/features/home/home_viewmodel.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/widgets/icon_title.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    final List<HomeTabs> homeSections = [
      HomeTabs.dashboard,
      HomeTabs.services,
      HomeTabs.statistics,
      HomeTabs.referrals,
      HomeTabs.settings
    ];
    return Scaffold(
      backgroundColor: SWDColors.black,
      body: Column(
        children: [
          Expanded(
            child: viewModel.currentTab.view,
          ),
          SizedBox(
            height: 65,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: homeSections
                    .map(
                      (section) => Expanded(
                        child: IconTitle(
                          onPressed: () {
                            viewModel.changeTab(selectedTab: section);
                          },
                          icon: SvgPicture.asset(
                            section.iconPath,
                            color: section == viewModel.currentTab
                                ? Colors.white
                                : const Color(
                                    0xFF363636,
                                  ),
                          ),
                          title: section.displayTitle,
                          textColor: section == viewModel.currentTab
                              ? Colors.white
                              : const Color(
                                  0xFF363636,
                                ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
