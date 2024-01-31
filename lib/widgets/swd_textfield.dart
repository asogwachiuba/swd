import 'package:flutter/material.dart';
import 'package:swd/utils/swd_colors.dart';

class SWDTitledTextField extends StatelessWidget {
  const SWDTitledTextField({
    super.key,
    this.title,
    this.hint,
    this.isReadOnly = false,
    this.controller,
    this.onEditingComplete,
    this.onChanged,
    this.enabled = true,
    this.sufficIcon,
    this.suffix,
    this.onTap,
    this.verticalPadding,
    this.minLine,
    this.maxLine,
    this.titleTextStyle,
    this.hintTextStyle,
    this.textStyle,
    this.keyboardType,
    this.prefix,
    this.prefixIcon,
    this.backgroundColor,
    this.isFilled = true,
    this.validator,
    this.isPasswordVisible = true,
  });
  final String? title;
  final String? hint;
  final bool isReadOnly;
  final bool enabled;
  final TextEditingController? controller;
  final VoidCallback? onEditingComplete;
  final Function(String)? onChanged;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? sufficIcon;
  final VoidCallback? onTap;
  final double? verticalPadding;
  final int? minLine;
  final int? maxLine;
  final TextStyle? titleTextStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final Color? backgroundColor;
  final bool isFilled;
  final String? Function(String?)? validator;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == null
            ? const SizedBox()
            : Text(
                title!,
                style: titleTextStyle ??
                    const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
              ),
        title == null ? const SizedBox() : const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          enabled: enabled,
          validator: validator,
          readOnly: isReadOnly,
          obscureText: !isPasswordVisible,
          onChanged: onChanged,
          onTap: onTap,
          cursorColor: SWDColors.redWine,
          minLines: minLine,
          maxLines: maxLine ?? 1,
          style: textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
          decoration: InputDecoration(
            hintText: hint,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            hintStyle: hintTextStyle ??
                const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: SWDColors.borderSub,
                ),
            fillColor: backgroundColor ?? SWDColors.grey,
            filled: isFilled,
            suffix: suffix,
            prefix: prefix,
            prefixIcon: prefixIcon,
            suffixIcon: sufficIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: SWDColors.borderColor,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: SWDColors.borderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: SWDColors.borderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: SWDColors.borderColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: SWDColors.borderColor,
              ),
            ),
            // constraints: maxLine != null
            //     ? null
            //     : BoxConstraints.tightFor(
            //         verticalPadding: verticalPadding ?? 45,
            //       )
          ),
          onEditingComplete: onEditingComplete,
        )
      ],
    );
  }
}
