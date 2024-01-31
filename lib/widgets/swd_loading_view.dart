import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swd/utils/swd_colors.dart';

class SWDLoadingView extends StatelessWidget {
  const SWDLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Expanded(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Center(
            child: Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: SWDColors.grey,
              ),
              child: const CircularProgressIndicator.adaptive(
                backgroundColor: SWDColors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
