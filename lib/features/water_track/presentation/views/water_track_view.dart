import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedWaterScreen extends StatefulWidget {
  const AnimatedWaterScreen({super.key});

  @override
  State<AnimatedWaterScreen> createState() => _AnimatedWaterScreenState();
}

class _AnimatedWaterScreenState extends State<AnimatedWaterScreen>
    with TickerProviderStateMixin {
  double _currentAmount = 1200;
  final double _goalAmount = 3000;
  late AnimationController _waveController;
  late AnimationController _bubbleController;
  late Animation<double> _fillAnimation;

  bool _isChanging = false;
  double _targetAmount = 1200;

  @override
  void initState() {
    super.initState();

    _waveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _bubbleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
  }

  void _changeWater(int delta) {
    if (_isChanging) return;
    setState(() {
      _targetAmount = (_currentAmount + delta).clamp(0, _goalAmount);
      _isChanging = true;
    });

    _fillAnimation = Tween<double>(
      begin: _currentAmount / _goalAmount,
      end: _targetAmount / _goalAmount,
    ).animate(_waveController)
      ..addListener(() {
        setState(() {});
      });

    _waveController.reset();
    _waveController.forward().then((_) {
      setState(() {
        _currentAmount = _targetAmount;
        _isChanging = false;
      });
    });

    _bubbleController.forward(from: 0).then((_) {
      setState(() {
        _isChanging = false;
      });
    });
  }

  @override
  void dispose() {
    _waveController.dispose();
    _bubbleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fillPercent = _isChanging ? _fillAnimation.value : _currentAmount / _goalAmount;
    final remaining = _goalAmount - _currentAmount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _waveController,
            builder: (_, __) {
              return CustomPaint(
                size: Size.infinite,
                painter: WavePainter(
                  _waveController.value,
                  _currentAmount / _goalAmount,
                  _targetAmount / _goalAmount,
                ),
              );
            },
          ),
          if (_isChanging)
            AnimatedBuilder(
              animation: _bubbleController,
              builder: (_, __) {
                return CustomPaint(
                  size: Size.infinite,
                  painter: BubbleWavePainter(_bubbleController.value, fillPercent),
                );
              },
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: GestureDetector(
                onTap: () => _changeWater(300),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.water_drop, size: 50, color: Colors.white),
                    SizedBox(height: 8),
                    Text('+300 ml', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Hello Jane', style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text('${_currentAmount.toStringAsFixed(0)}ml',
                      style: const TextStyle(fontSize: 40, color: Colors.blueAccent)),
                  Text('Remaining ${remaining.toStringAsFixed(0)}ml',
                      style: const TextStyle(fontSize: 16, color: Colors.grey)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue;
  final double startFillPercent;
  final double endFillPercent;

  WavePainter(this.animationValue, this.startFillPercent, this.endFillPercent);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    final path = Path();

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

    canvas.drawPath(path, paint);
  }

  double _interpolateFill() {
    return startFillPercent + (animationValue * (endFillPercent - startFillPercent));
  }

  @override
  bool shouldRepaint(covariant WavePainter oldDelegate) =>
      animationValue != oldDelegate.animationValue || startFillPercent != oldDelegate.startFillPercent || endFillPercent != oldDelegate.endFillPercent;
}

class BubbleWavePainter extends CustomPainter {
  final double animationValue;
  final double fillPercent;

  BubbleWavePainter(this.animationValue, this.fillPercent);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white70
      ..style = PaintingStyle.fill;

    final yBase = size.height * (1 - fillPercent);
    final rise = 60 * animationValue;

    final bubbles = [
      Offset(size.width * 0.4, yBase - rise),
      Offset(size.width * 0.6, yBase - rise * 1.2),
      Offset(size.width * 0.5, yBase - rise * 1.5),
    ];

    for (final b in bubbles) {
      canvas.drawCircle(b, 6, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}