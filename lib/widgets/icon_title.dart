import 'package:flutter/material.dart';
import 'package:swd/utils/swd_colors.dart';

class IconTitle extends StatelessWidget {
  const IconTitle({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.title,
    this.gap = 8,
    this.textColor = SWDColors.black,
    this.textsize = 12,
    this.backgroundColor = Colors.transparent,
    this.borderRadius,
    this.padding,
  });
  final String title;
  final VoidCallback onPressed;
  final Widget icon;
  final double textsize;
  final Color textColor;
  final double gap;
  final double? padding;
  final Color backgroundColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        padding: padding == null ? null : EdgeInsets.all(padding!),
        decoration: BoxDecoration(
          borderRadius: borderRadius == null
              ? null
              : BorderRadius.all(
                  Radius.circular(borderRadius!),
                ),
          color: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: backgroundColor == null
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              height: gap,
            ),
            Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: textsize,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
