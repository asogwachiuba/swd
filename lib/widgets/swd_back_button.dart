import 'package:flutter/material.dart';
import 'package:swd/utils/swd_colors.dart';

class SWDBackButton extends StatelessWidget {
  const SWDBackButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: const [
          Icon(
            Icons.arrow_back_ios,
            color: SWDColors.borderSub,
            size: 24,
          ),
          Text(
            "Back",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: SWDColors.borderSub,
            ),
          )
        ],
      ),
    );
  }
}
