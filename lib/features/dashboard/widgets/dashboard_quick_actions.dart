import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/dashboard/dashboard_viewmodel.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/widgets/icon_title.dart';

class DashboardQuickActions extends ViewModelWidget<DashboardViewModel> {
  const DashboardQuickActions({super.key});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    const screenPadding = 20.0;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Quick Actions",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              //Width of a box * two rows + padding
              height: ((size.width / 4) * 2) + 8,
              width: double.maxFinite,
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 4,
                children: [
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icBrokenRing.svg()),
                    title: "Data",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icCreditCard.svg()),
                    title: "Airtime",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icDoubleSlash.svg()),
                    title: "Showmax",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icGiftCard.svg()),
                    title: "GiftCards",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icFootball.svg()),
                    title: "Betting",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icRestore.svg()),
                    title: "Electricity",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icSubscription.svg()),
                    title: "TV/Cable",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  ),
                  IconTitle(
                    onPressed: () {},
                    icon: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [SWDColors.redWine, SWDColors.yellow],
                            tileMode: TileMode.clamp,
                          ).createShader(bounds);
                        },
                        child: Assets.icons.icHiddenPassword.svg()),
                    title: "E-Pin",
                    gap: 3,
                    textColor: Colors.white,
                    backgroundColor: SWDColors.quickActionTabColor,
                    borderRadius: 5,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
