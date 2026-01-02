import '../entities/user_info.dart';

class CalculateDailyCalories {
  int call(UserInfo user) {
    final now = DateTime.now();
    int age = now.year - user.birthDate.year;
    if (now.month < user.birthDate.month ||
        (now.month == user.birthDate.month && now.day < user.birthDate.day)) {
      age -= 1;
    }

    double bmr;
    if (user.gender == Gender.male) {
      bmr = 10 * user.weight + 6.25 * user.height - 5 * age + 5;
    } else {
      bmr = 10 * user.weight + 6.25 * user.height - 5 * age - 161;
    }

    double multiplier;
    switch (user.activity) {
      case ActivityLevel.sedentary:
        multiplier = 1.2;
        break;
      case ActivityLevel.lightlyActive:
        multiplier = 1.375;
        break;
      case ActivityLevel.moderatelyActive:
        multiplier = 1.55;
        break;
      case ActivityLevel.veryActive:
        multiplier = 1.725;
        break;
    }

    final tdee = bmr * multiplier;

    int adjustment;
    switch (user.goal) {
      case UserGoal.loseWeight:
        adjustment = -500;
        break;
      case UserGoal.maintainWeight:
        adjustment = 0;
        break;
      case UserGoal.gainWeight:
        adjustment = 300;
        break;
    }

    final result = (tdee + adjustment).round();
    return result;
  }
}
