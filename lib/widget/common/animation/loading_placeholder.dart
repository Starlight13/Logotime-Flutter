import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPlaceholder extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final bool isLoading;

  const LoadingPlaceholder({
    Key? key,
    this.height = 24.0,
    this.width = 200.0,
    required this.child,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: Colors.white12,
            period: const Duration(seconds: 3),
            child: Container(
              color: Colors.grey,
              width: width,
              height: height,
            ),
          )
        : child;
  }
}
