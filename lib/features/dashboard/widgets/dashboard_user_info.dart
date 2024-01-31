import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/dashboard/dashboard_viewmodel.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/swd_colors.dart';
import 'package:swd/widgets/circle_inscribed_icon.dart';
import 'package:swd/widgets/icon_title.dart';

class DashboardUserInfo extends ViewModelWidget<DashboardViewModel> {
  const DashboardUserInfo({super.key});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    const double screenPadding = 20;
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              // Welcome greeting
              Stack(
                children: [
                  Container(
                    height: 44,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.98, 0.22),
                        end: Alignment(0.98, -0.22),
                        colors: [
                          Color(0xFFEF5757),
                          Color(0xFFEFA057),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(top: 1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: screenPadding,
                      ),
                      child: Row(
                        children: [
                          CircleInscribedIcon(
                            onPressed: () {},
                            icon: Assets.icons.icPerson.svg(),
                            radius: 44,
                          ),
                          const Spacer(),
                          Text(
                            "Welcome, ${viewModel.getUserFirstname()} 👋🏾",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: SWDColors.black,
                            ),
                          ),
                          const Spacer(),
                          CircleInscribedIcon(
                            onPressed: () {},
                            radius: 44,
                            icon: Assets.icons.icNotification.svg(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 25,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: screenPadding),
                child: Column(
                  children: [
                    // Gradient card
                    Container(
                      height: 100,
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        gradient: LinearGradient(
                          begin: Alignment(-0.98, 0.22),
                          end: Alignment(0.98, -0.22),
                          colors: [
                            Color(0xFFEF5757),
                            Color(0xFFEFA057),
                          ],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Wallet balance
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Wallet balance",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                      // This will be updated if the user model contains an accountbalance field
                                      viewModel.passwordIsVisibile
                                          ? "NGN 0.000"
                                          : "NGN *.**",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        viewModel.togglePasswordVisibility(),
                                    child: Icon(
                                      viewModel.passwordIsVisibile
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Colors.white.withOpacity(0.75),
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 3),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Text("Cashback ",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: SWDColors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Text("N0.00",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: SWDColors.redWine,
                                          fontWeight: FontWeight.w700,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Generate acct widget
                          Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: const Center(
                                child: Text("Generate Acct",
                                    style: TextStyle(
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ))),
                          )
                        ],
                      ),
                    ),
                    // Top, tranfer and history
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconTitle(
                            onPressed: () {},
                            icon: Assets.icons.icPlus.svg(
                              height: 20,
                              width: 20,
                              color: SWDColors.black,
                            ),
                            title: "Top up",
                          ),
                          Container(
                            height: 15,
                            width: 1,
                            color: SWDColors.borderSub,
                          ),
                          IconTitle(
                            onPressed: () {},
                            icon: Assets.icons.icSend.svg(
                              height: 20,
                              width: 20,
                              color: SWDColors.black,
                            ),
                            title: "Transfer",
                          ),
                          Container(
                            height: 15,
                            width: 1,
                            color: SWDColors.borderSub,
                          ),
                          IconTitle(
                            onPressed: () {},
                            icon: Assets.icons.icClock.svg(
                              height: 20,
                              width: 20,
                              color: SWDColors.black,
                            ),
                            title: "History",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                        width: 48,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(104),
                            color: const Color(0xffe8e8e8)))
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
