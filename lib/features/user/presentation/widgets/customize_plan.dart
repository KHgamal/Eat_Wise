import 'dart:async';
import 'package:eat_wise/features/user/presentation/widgets/progress_indicator.dart';
import 'package:eat_wise/features/user/presentation/widgets/step_item.dart';
import 'package:flutter/material.dart';

class CustomizePlan extends StatefulWidget {
  const CustomizePlan({super.key});

  @override
  State<CustomizePlan> createState() => _CustomizePlanState();
}

class _CustomizePlanState extends State<CustomizePlan> {
  int currentStep = 0;

  final List<String> steps = [
    "Analyzing Body Metrics",
    "Determining BMI",
    "Estimating Daily Calorie Expenditure",
    "Generating Personalized Plan",
  ];

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startFakeLoading();
  }

  void _startFakeLoading() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentStep < steps.length) {
        setState(() {
          currentStep++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double progress = currentStep / steps.length;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              const Spacer(),
              
              const Text(
                "We're Getting\nEverything Ready\nFor You!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const Spacer(),

              /// Animated Progress
              AnimatedProgressIndicator(progress: progress),

              const Spacer(),

              /// Checklist
              ...List.generate(
                steps.length,
                (index) =>
                    StepItem(text: steps[index], isDone: index < currentStep),
              ),

              const Spacer(),

              const Text(
                "Hang tight! We're creating a personalized plan\njust for you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}