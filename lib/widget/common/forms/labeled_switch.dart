import 'package:flutter/material.dart';
import 'package:logotime/widget/common/forms/styled_switch.dart';

class LabeledSwitch extends StatelessWidget {
  final String label;
  final bool value;
  final Function(bool) onChange;
  final EdgeInsets? padding;
  const LabeledSwitch({
    super.key,
    required this.label,
    required this.value,
    required this.onChange,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Text(label),
          ),
          StyledSwitch(
            value: value,
            onChanged: onChange,
          )
        ],
      ),
    );
  }
}
