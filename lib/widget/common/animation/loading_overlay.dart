import 'package:flutter/material.dart';
import 'package:logotime/widget/app_theme/app_colors.dart';

class LoadingOverlay extends StatelessWidget {
  final Widget child;
  final bool isLoading;

  const LoadingOverlay({
    super.key,
    required this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Positioned.fill(
            child: Container(
              color: AppColors.white.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(
                  color: AppColors.teal,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
