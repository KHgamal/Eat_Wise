import 'package:eat_wise/core/common/widgets/continue_button.dart';
import 'package:eat_wise/features/user/presentation/Controller/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/snack_bar.dart';
import '../../../../core/constants/activity_levels.dart';
import '../../domain/entities/user_info.dart';
import '../Controller/bloc/user_bloc.dart';
import '../Controller/bloc/user_state.dart';
import '../Controller/cubit/on_boarding_cubit.dart';
import '../widgets/choice_container.dart';
import '../widgets/level_item.dart';

class ActivityLevelPage extends StatelessWidget {
  const ActivityLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's your activity level?",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                  itemCount: ActivityLevelData.levels.length,
                  itemBuilder: (context, index) {
                    final item = ActivityLevelData.levels[index];
                    final level = _parseActivity(item["title"]!);
                    final isSelected = state.activityLevel == level;
                    return ChoiceContainer(
                      onTap: () {
                        context.read<UserBloc>().add(
                          ActivityLevelSelected(level),
                        );
                      },
                      isSelected: isSelected,
                      child: LevelItem(
                        desc: item["desc"]!,
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
              if (context.read<UserBloc>().state.activityLevel == null) {
                showValidationError(
                  context,
                  'Please select your Activity Level',
                );
                return;
              }
              context.read<OnboardingCubit>().next();
            },
          ),
        ],
      ),
    );
  }
}

ActivityLevel _parseActivity(String title) {
  switch (title) {
    case 'Sedentary':
      return ActivityLevel.sedentary;
    case 'Light Activity':
      return ActivityLevel.lightlyActive;
    case 'Moderate Active':
      return ActivityLevel.moderatelyActive;
    case 'Very Active':
      return ActivityLevel.veryActive;
    default:
      return ActivityLevel.lightlyActive;
  }
}
