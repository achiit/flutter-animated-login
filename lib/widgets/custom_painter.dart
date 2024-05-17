import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class DrawerHeaderPainter extends CustomPainter {
  final Animation<Color?> colorAnimation;

  DrawerHeaderPainter(this.colorAnimation) : super(repaint: colorAnimation);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..shader = _createGradient(size);
    final Path path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.9,
        size.width * 0.5, size.height);
    path.quadraticBezierTo(size.width * 0.75, size.height * 1.1, size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  ui.Gradient _createGradient(Size size) {
    return ui.Gradient.linear(
      Offset(0, size.height),
      Offset(0, 0), // Updated end point
      [
        colorAnimation.value!,
        colorAnimation.value!.withOpacity(0.5),
      ],
    );
  }
}