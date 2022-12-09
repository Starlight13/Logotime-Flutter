import 'package:flutter/material.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

class RegularButton extends StatelessWidget {
  const RegularButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.buttonColor = AppColors.orange,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 25,
    this.textColor = AppColors.white,
    this.padding = const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    this.textStyle,
  }) : super(key: key);

  final Function() onTap;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: buttonColor,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: textStyle ??
              TextStyle(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
        ),
      ),
    );
  }
}
