import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/error_message.dart';
import '../Controller/cubit/on_boarding_cubit.dart';
import '../Controller/cubit/on_boarding_state.dart';
import '../widgets/customize_plan.dart';
import '../widgets/done_icon.dart';

class OnboardingLoadingPage extends StatelessWidget {
  const OnboardingLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child :BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
          switch (state.status) {
            case OnboardingStatus.loading:
              return const CustomizePlan();
      
            case OnboardingStatus.success:
              return const DoneIcon();
      
            case OnboardingStatus.error:
              return ErrorMessage(message: state.errorMessage!);
      
            default:
              return const SizedBox.shrink();
          }
        },
      ),
      ),
    );
  }
}