import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logotime/extensions.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

class StyledTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final String fieldTitle;
  final String? error;
  final bool isObscured;
  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? hint;

  const StyledTextField({
    super.key,
    required this.fieldTitle,
    required this.controller,
    this.onChanged,
    this.error,
    this.isObscured = false,
    this.inputFormatters,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        controller: controller,
        autocorrect: false,
        onChanged: onChanged,
        obscureText: isObscured,
        cursorColor: AppColors.teal,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          hintText: hint,
          labelText: fieldTitle.capitalize(),
          floatingLabelStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          errorText: error,
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
    );
  }
}
