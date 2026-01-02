import '../../features/user/domain/entities/user_info.dart';

// Calculates BMR, TDEE and final daily calories
class CalorieCalculator {
  static double _bmr(
      {required Gender gender,
      required double weightKg,
      required int heightCm,
      required int age}) {
    if (gender == Gender.male) {
      return 10 * weightKg + 6.25 * heightCm - 5 * age + 5;
    } else {
      return 10 * weightKg + 6.25 * heightCm - 5 * age - 161;
    }
  }

  static double _activityMultiplier(ActivityLevel level) {
    switch (level) {
      case ActivityLevel.sedentary:
        return 1.2;
      case ActivityLevel.lightlyActive:
        return 1.375;
      case ActivityLevel.moderatelyActive:
        return 1.55;
      case ActivityLevel.veryActive:
        return 1.725;
    }
  }

  static int _goalAdjustment(UserGoal goal) {
    switch (goal) {
      case UserGoal.loseWeight:
        return -500;
      case UserGoal.maintainWeight:
        return 0;
      case UserGoal.gainWeight:
        return 300;
    }
  }

  static int calculateDailyCalories({
    required Gender gender,
    required double weightKg,
    required int heightCm,
    required DateTime birthDate,
    required ActivityLevel activity,
    required UserGoal goal,
  }) {
    final now = DateTime.now();
    int age = now.year - birthDate.year;
    if (now.month < birthDate.month ||
        (now.month == birthDate.month && now.day < birthDate.day)) {
      age -= 1;
    }

    final bmr =
        _bmr(gender: gender, weightKg: weightKg, heightCm: heightCm, age: age);
    final tdee = bmr * _activityMultiplier(activity);
    final finalCalories = (tdee + _goalAdjustment(goal)).round();
    return finalCalories;
  }
}
