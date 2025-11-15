import 'package:eat_wise/features/water_track/presentation/widgets/water_track_texts.dart';
import 'package:eat_wise/features/water_track/presentation/widgets/wave_painter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/water_provider.dart';
import '../widgets/bubble_wave_painter.dart';
import '../widgets/increase_decrease_water_dialog.dart';
import '../widgets/water_track_bottom_bar.dart';

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

  /////?????????????????????????????????????
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
    final fillPercent =
        _isChanging ? _fillAnimation.value : _currentAmount / _goalAmount;
    final remaining = _goalAmount - _currentAmount;

    return Stack(
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
                  painter:
                      BubbleWavePainter(_bubbleController.value, fillPercent),
                );
              },
            ),
          WaterTrackTexts(currentAmount: _currentAmount, remaining: remaining),
          WaterTrackBottomBar(
            onIncrease: () => showWaterIntakeDialog(
                context: context,
                onPressed: ()=> _changeWater(int.parse(
                    Provider.of<WaterProvider>(context, listen: false)
                        .controller
                        .text))),
            onDecrease: () => showWaterIntakeDialog(
                context: context,
                onPressed: () => _changeWater(-int.parse(
                    Provider.of<WaterProvider>(context, listen: false)
                        .controller
                        .text))),
          )
        ],
      );
  }
}
