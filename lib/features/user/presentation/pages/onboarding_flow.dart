import 'package:eat_wise/features/user/presentation/pages/gender_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Controller/cubit/on_boarding_cubit.dart';
import '../Controller/cubit/on_boarding_state.dart';
import '../widgets/page_indicator.dart';
import 'activity_level_page.dart';
import 'goal_page.dart';
import 'height_weight_page.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: SafeArea(
        child:   BlocListener<OnboardingCubit, OnboardingState>(
              listener: (context, state) {
                _controller.animateToPage(
                  state.step - 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
           
          child: BlocBuilder<OnboardingCubit, OnboardingState>(
            builder: (context, onboardingState) {
              final currentStep = onboardingState.step;

              return Column(
                children: [
                  Row(
                    children: [
                      currentStep > 1
                          ? IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                context
                                    .read<OnboardingCubit>()
                                    .back();
                              },
                            )
                          : const SizedBox(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: PageIndicator(
                            currentStep: currentStep,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: PageView(
                      controller: _controller,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GenderPage(),
                        HeightWeightPage(),
                        ActivityLevelPage(),
                        GoalPage(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}