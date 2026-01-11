import 'package:equatable/equatable.dart';
enum OnboardingStatus {
  idle,
  loading,
  success,
  error,
}

class OnboardingState {
  final int step;
  final OnboardingStatus status;
  final String? errorMessage;

  const OnboardingState({
    required this.step,
    this.status = OnboardingStatus.idle,
    this.errorMessage,
  });

  OnboardingState copyWith({
    int? step,
    OnboardingStatus? status,
    String? errorMessage,
  }) {
    return OnboardingState(
      step: step ?? this.step,
      status: status ?? this.status,
      errorMessage: errorMessage,
    );
  }
}


