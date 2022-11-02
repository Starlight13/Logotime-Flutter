import 'package:flutter/material.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';
import 'package:logotime/widget/common/buttons/regular_button.dart';

class RadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final Function(T value) onChange;
  final String label;

  const RadioButton({
    super.key,
    required this.value,
    required this.onChange,
    required this.groupValue,
    required this.label,
  });

  bool get isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return RegularButton(
      onTap: () => onChange(value),
      text: label,
      buttonColor: isSelected ? AppColors.orange : AppColors.lightOrange,
      padding: isSelected
          ? const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0)
          : const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
    );
  }
}
