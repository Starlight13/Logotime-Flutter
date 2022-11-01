import 'package:flutter/material.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

class StyledTextField extends StatefulWidget {
  final Function(String) onChanged;
  final String fieldTitle;
  final TextInputType? keyboardType;
  final String? error;
  final bool isObscured;

  const StyledTextField({
    super.key,
    required this.onChanged,
    required this.fieldTitle,
    this.error,
    this.keyboardType,
    this.isObscured = false,
  });

  @override
  State<StyledTextField> createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          autocorrect: false,
          onChanged: widget.onChanged,
          obscureText: widget.isObscured,
          cursorColor: AppColors.teal,
          decoration: InputDecoration(
            labelText: widget.fieldTitle.capitalize(),
            floatingLabelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
            floatingLabelAlignment: FloatingLabelAlignment.start,
            errorText: widget.error,
            errorStyle: const TextStyle(
              fontSize: 14.0,
              color: Colors.red,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.orange,
                width: 3.0,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.orange,
                width: 2.0,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
