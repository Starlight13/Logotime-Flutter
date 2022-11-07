import 'package:flutter/material.dart';

abstract class ISnackBarDefinitionService {
  final GlobalKey<ScaffoldMessengerState> snackbarKey =
      GlobalKey<ScaffoldMessengerState>();

  void showSnackBar(SnackBar snackBar);
}

class SnackBarDefinitionService extends ISnackBarDefinitionService {
  @override
  void showSnackBar(SnackBar snackBar) {
    snackbarKey.currentState?.showSnackBar(snackBar);
  }
}
