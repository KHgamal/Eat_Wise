import 'package:eat_wise/core/constants/goal.dart';
import 'package:eat_wise/features/user/presentation/Controller/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/continue_button.dart';
import '../../../../core/common/widgets/snack_bar.dart';
import '../../domain/entities/user_info.dart';
import '../Controller/bloc/user_bloc.dart';
import '../Controller/bloc/user_state.dart';
import '../Controller/cubit/on_boarding_cubit.dart';
import '../Controller/cubit/on_boarding_state.dart';
import '../widgets/choice_container.dart';
import '../widgets/goal_item.dart';
import 'onboarding_loading_page.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state.status == OnboardingStatus.loading) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const OnboardingLoadingPage()),
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What Is Your Goal ?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: GoalData.goals.length,
                    itemBuilder: (context, index) {
                      final item = GoalData.goals[index];
                      final goal = _parseGoal(item["title"]!);
                      final isSelected = state.goal == goal;
                      return ChoiceContainer(
                        onTap: () {
                          context.read<UserBloc>().add(GoalSelected(goal));
                        },
                        isSelected: isSelected,
                        child: GoalItem(
                          icon: item["icon"]!,
                          title: item["title"]!,
                        ),
                      );
                    },
                  ),
                );
              },
            ),

            ContinueButton(
              onContinue: () {
                if (context.read<UserBloc>().state.goal == null) {
                  showValidationError(context, 'Please select your goal');
                  return;
                }
                context.read<UserBloc>().add(SubmitOnboarding());
                context.read<OnboardingCubit>().submit();
              },
            ),
          ],
        ),
      ),
    );
  }
}

UserGoal _parseGoal(String title) {
  switch (title) {
    case 'Gain weight':
      return UserGoal.gainWeight;
    case 'Lose weight':
      return UserGoal.loseWeight;
    case 'Maintain weight':
      return UserGoal.maintainWeight;
    default:
      return UserGoal.maintainWeight;
  }
}
