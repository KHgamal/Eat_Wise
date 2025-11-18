import 'package:flutter/material.dart';

import '../widgets/page_indicator.dart';
import 'activity_level_page.dart';
import 'gender_view.dart';
import 'goal_page.dart';
import 'height_weight_page.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _controller = PageController();
  int currentStep = 1;

  void nextPage() {
    if (currentStep < 4) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final page = (_controller.page ?? 0).round() + 1;
      if (page != currentStep) {
        setState(() => currentStep = page);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Step Indicator
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: StepIndicator(currentStep: currentStep),
            ),

            Expanded(
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(), // Swipe disabled
                children: [
                  GenderPage(onContinue: nextPage),
                  HeightWeightPage(onContinue: nextPage),
                  ActivityLevelPage(onContinue: nextPage),
                  GoalPage(onContinue: nextPage)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
