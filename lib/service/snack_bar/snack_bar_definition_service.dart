import 'package:flutter/material.dart';

/// Service for working with the global [ScaffoldMessenger].
abstract class ISnackBarDefinitionService {
  /// App's snack bar key.
  final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();

  /// Shows a [snackbar].
  void showSnackBar(SnackBar snackBar);
}

class SnackBarDefinitionService extends ISnackBarDefinitionService {
  @override
  void showSnackBar(SnackBar snackBar) {
    snackbarKey.currentState?.hideCurrentSnackBar();
    snackbarKey.currentState?.showSnackBar(snackBar);
  }
}
