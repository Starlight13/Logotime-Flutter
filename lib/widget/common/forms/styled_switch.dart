import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

class StyledSwitch extends StatelessWidget {
  final bool value;
  final Function(bool value) onChanged;
  final double size;

  const StyledSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: value,
      onToggle: onChanged,
      activeColor: AppColors.teal,
      activeToggleColor: AppColors.orange,
      padding: 0.0,
      height: 25.0,
      width: 60.0,
      toggleSize: 25.0,
      activeToggleBorder: Border.all(
        color: Colors.white,
      ),
      inactiveColor: AppColors.lightTeal,
      inactiveToggleBorder: Border.all(
        color: AppColors.lightTeal,
      ),
      inactiveSwitchBorder: Border.all(color: AppColors.lightTeal),
    );
  }
}
