import 'package:flutter/material.dart';

class TextWithLabel extends StatelessWidget {
  final String label;
  final String text;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  const TextWithLabel({
    super.key,
    required this.label,
    required this.text,
    this.labelStyle,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(vertical: 10.0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            label,
            textAlign: TextAlign.left,
            style: labelStyle,
          )),
          Expanded(
              child: Text(
            text,
            textAlign: TextAlign.right,
            style: textStyle,
          )),
        ],
      ),
    );
  }
}
