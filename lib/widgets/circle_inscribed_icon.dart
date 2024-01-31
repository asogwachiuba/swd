import 'package:flutter/material.dart';
import 'package:swd/utils/swd_colors.dart';

class CircleInscribedIcon extends StatelessWidget {
  const CircleInscribedIcon({
    super.key,
    required this.onPressed,
    this.radius = 30,
    required this.icon,
  });

  final VoidCallback onPressed;
  final double radius;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          border: Border.all(
            color: SWDColors.borderSub,
          ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
