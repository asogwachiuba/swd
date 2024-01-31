import 'package:flutter/material.dart';

class SWDBorderButton extends StatelessWidget {
  const SWDBorderButton({
    super.key,
    required this.buttonName,
    required this.onPressed,
    this.buttonHeight,
    this.buttonWidth,
    this.textStyle,
  });
  final double? buttonHeight;
  final double? buttonWidth;
  final String buttonName;
  final VoidCallback onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: buttonWidth ?? 328,
        height: buttonHeight ?? 40,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF878787)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: textStyle ??
                const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
      ),
    );
  }
}
