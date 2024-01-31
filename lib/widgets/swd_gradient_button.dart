import 'package:flutter/material.dart';

class SWDGradientButton extends StatelessWidget {
  const SWDGradientButton({
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
          gradient: const LinearGradient(
            begin: Alignment(-0.98, 0.22),
            end: Alignment(0.98, -0.22),
            colors: [Color(0xFFEFA057), Color(0xFFEF5757)],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
