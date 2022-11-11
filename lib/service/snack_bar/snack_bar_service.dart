import 'package:flutter/material.dart';
import 'package:logotime/service/snack_bar/snack_bar_definition_service.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

abstract class ISnackBarService {
  void showSuccess(String message);
  void showError(String message);
}

class SnackBarService extends ISnackBarService {
  final ISnackBarDefinitionService snackBarDefinitionService;

  SnackBarService({required this.snackBarDefinitionService});

  @override
  void showError(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    );
    snackBarDefinitionService.showSnackBar(snackBar);
  }

  @override
  void showSuccess(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: AppColors.teal,
    );
    snackBarDefinitionService.showSnackBar(snackBar);
  }
}
