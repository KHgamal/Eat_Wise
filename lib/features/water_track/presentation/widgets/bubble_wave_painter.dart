import 'package:flutter/material.dart';

class BubbleWavePainter extends CustomPainter {
  // Drives the animation timeline (0.0 to 1.0)..
  final double animationValue;

// Defines the water level, setting the starting point for bubbles.
  final double fillPercent;

  BubbleWavePainter(this.animationValue, this.fillPercent);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.fill;

// starting vertical position
// size.height, which is the bottom of the canvas.
    final yBase = size.height ;

    // Controls the upward movement distance
    final rise =480 * animationValue;

    final bubbles = [
      Offset(size.width * 0.4, yBase - rise ),
      Offset(size.width * 0.6, yBase - rise * 1.2),
      Offset(size.width * 0.5, yBase - rise * 1.4),
    ];

    for (final b in bubbles) {
      canvas.drawCircle(b, 6, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
