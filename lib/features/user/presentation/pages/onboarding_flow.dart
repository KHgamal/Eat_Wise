import 'package:eat_wise/features/user/presentation/pages/gender_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/user_info.dart';
import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import 'package:uuid/uuid.dart';
import '../widgets/page_indicator.dart';
import 'activity_level_page.dart';
import 'goal_page.dart';
import 'height_weight_page.dart';
import 'onboarding_loading_page.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _controller = PageController();
  int currentStep = 1;

  String name = '';
  Gender gender = Gender.female;
  int height = 165;
  double weight = 60;
  DateTime birthDate = DateTime(1995, 1, 1);
  ActivityLevel activity = ActivityLevel.sedentary;
  UserGoal goal = UserGoal.maintainWeight;

  void nextPage() {
    if (currentStep < 4) {
      _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      _finalize();
    }
  }

  void _finalize() {
    final id = const Uuid().v4();
    final user = UserInfo(
      id: id,
      name: name.isEmpty ? 'User' : name,
      gender: gender,
      height: height,
      weight: weight,
      birthDate: birthDate,
      activity: activity,
      goal: goal,
    );
    print("name : $name \n gender : $gender \n  height : $height \n weight : $weight \n"
    " birthDate : $birthDate /\n activity : $activity \n goal : $goal \n");
    context.read<UserBloc>().add(CreateUserEvent(user));
    // navigate to loading page
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => const OnboardingLoadingPage()));
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final page = (_controller.page ?? 0).round() + 1;
      if (page != currentStep) setState(() => currentStep = page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                currentStep > 1
                    ? IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          _controller.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                      )
                    : const SizedBox(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: StepIndicator(currentStep: currentStep),
                  ),
                ),
              ],
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

