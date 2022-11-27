import 'package:flutter/material.dart';

class AvatarClipper extends CustomClipper<Path> {
  final double size;

  AvatarClipper({required this.size});

  @override
  Path getClip(Size size) {
    final path = Path();

    final widthCenter = size.width / 2;

    path
      ..moveTo(widthCenter - this.size / 2, size.height)
      ..lineTo(widthCenter - this.size / 2, size.height - this.size * 0.3)
      ..arcToPoint(
          Offset(widthCenter + this.size / 2, size.height - this.size * 0.3),
          radius: Radius.circular(this.size),
          rotation: 10)
      ..lineTo(widthCenter + this.size / 2, size.height)
      ..addOval(
        Rect.fromCircle(
            center: Offset(widthCenter, size.height - this.size * 0.8),
            radius: this.size / 4),
      );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
