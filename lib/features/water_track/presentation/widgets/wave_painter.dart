import 'dart:math';

import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final double animationValue;
  final double startFillPercent;
  final double endFillPercent;

  WavePainter(this.animationValue, this.startFillPercent, this.endFillPercent);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;

    // Determine fill color based on fill percentage
    if (_interpolateFill() <= 0) {
      paint.color = Colors.white; // Fully white at 0 ml
    } else if (_interpolateFill() >= 1) {
      paint.color = Colors.blueAccent; // Fully blue at 3000 ml
    } else {
      paint.color = Colors.blueAccent; // Wave color for intermediate levels
    }

    final path = Path();

    // Only draw wave if between 0 and 3000 ml
    if (_interpolateFill() > 0 && _interpolateFill() < 1) {
      final baseHeight = size.height * (1 - _interpolateFill());
      final waveHeight1 = 30.0; // Higher wave
      final waveHeight2 = 20.0; // Lower wave
      final waveSpeed = animationValue * 4 * pi;

      path.moveTo(0, baseHeight);
      for (double i = 0; i <= size.width; i++) {
        double normalizedX = i / size.width;
        double wave1 = sin(normalizedX * 2 * pi + waveSpeed) * waveHeight1;
        double wave2 = sin(normalizedX * 2 * pi + waveSpeed + pi) * waveHeight2;
        double y = baseHeight - (wave1 + wave2);
        path.lineTo(i, y);
      }
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.close();
    } else {
      // Fill the entire canvas with the solid color
      path.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    }

    canvas.drawPath(path, paint);
  }

  double _interpolateFill() {
    return startFillPercent + (animationValue * (endFillPercent - startFillPercent));
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) =>
      animationValue != oldDelegate.animationValue || startFillPercent != oldDelegate.startFillPercent || endFillPercent != oldDelegate.endFillPercent;
}