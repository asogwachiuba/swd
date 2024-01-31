import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stacked/stacked.dart';
import 'package:swd/features/dashboard/dashboard_viewmodel.dart';
import 'package:swd/gen/assets.gen.dart';
import 'package:swd/utils/swd_colors.dart';

class DashboardNewsUpdate extends ViewModelWidget<DashboardViewModel> {
  const DashboardNewsUpdate({super.key});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "News & Update",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: SWDColors.redWine,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
            width: double.maxFinite,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                enlargeCenterPage: false,
                onPageChanged: (index, _) {},
                scrollDirection: Axis.horizontal,
                padEnds: false,
              ),
              items: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Assets.images.img1.image(
                      width: 285,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Assets.images.img1.image(
                      width: 285,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
