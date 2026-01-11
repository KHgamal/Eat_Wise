import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_boarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState(step: 1));

  void next() {
    if (state.step < 4) {
      emit(state.copyWith(step: state.step + 1));
    }
  }

  void back() {
    if (state.step > 1) {
      emit(state.copyWith(step: state.step - 1));
    }
  }

  void reset() {
    emit(const OnboardingState(step: 1));
  }

  Future<void> submit() async {
    emit(state.copyWith(status: OnboardingStatus.loading));

    try {
      await Future.delayed(const Duration(milliseconds: 4850)); // simulate save

      emit(state.copyWith(status: OnboardingStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: OnboardingStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
