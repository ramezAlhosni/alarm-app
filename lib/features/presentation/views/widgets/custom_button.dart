import 'package:alarm_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.onTap,
      required this.text,
      required this.backgroundColor,
      required this.textColor,
      this.width});
  final void Function()? onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: backgroundColor,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Fonts.textStyle18W4.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
