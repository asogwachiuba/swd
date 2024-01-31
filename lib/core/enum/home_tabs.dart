import 'package:flutter/material.dart';
import 'package:swd/features/dashboard/dashboard_view.dart';
import 'package:swd/features/referrals/referrals_view.dart';
import 'package:swd/features/services/services_view.dart';
import 'package:swd/features/settings/settings_view.dart';
import 'package:swd/features/statistics/statistics_view.dart';
import 'package:swd/gen/assets.gen.dart';

enum HomeTabs {
  dashboard,
  services,
  statistics,
  referrals,
  settings,
}

extension HomeTabsX on HomeTabs {
  bool get isDashboard => this == HomeTabs.dashboard;
  bool get isReferrals => this == HomeTabs.referrals;
  bool get isServices => this == HomeTabs.services;
  bool get isStatistics => this == HomeTabs.statistics;

  String get displayTitle {
    switch (this) {
      case HomeTabs.dashboard:
        return 'Home';
      case HomeTabs.services:
        return 'Services';
      case HomeTabs.statistics:
        return 'Statistics';
      case HomeTabs.referrals:
        return 'Referrals';
      case HomeTabs.settings:
        return 'Settings';
    }
  }

  String get iconPath {
    switch (this) {
      case HomeTabs.dashboard:
        return Assets.icons.icGridSvg.path;
      case HomeTabs.services:
        return Assets.icons.icGrid.path;
      case HomeTabs.statistics:
        return Assets.icons.icArrowUpDown.path;
      case HomeTabs.referrals:
        return Assets.icons.icSettings.path;
      case HomeTabs.settings:
        return Assets.icons.icSettings.path;
    }
  }

  Widget get view {
    switch (this) {
      case HomeTabs.dashboard:
        return const DashboardView();
      case HomeTabs.services:
        return const ServicesView();
      case HomeTabs.statistics:
        return const StatisticsView();
      case HomeTabs.referrals:
        return const ReferralsView();
      case HomeTabs.settings:
        return const SettingsView();
    }
  }
}
