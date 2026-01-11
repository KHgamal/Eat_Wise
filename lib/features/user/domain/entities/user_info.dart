enum Gender { male, female }

enum ActivityLevel { sedentary, lightlyActive, moderatelyActive, veryActive }

enum UserGoal { gainWeight, loseWeight, maintainWeight }

class UserInfo {
  final String id;
  final String name;
  final Gender gender;
  final int height; 
  final int weight;
  final DateTime birthDate;
  final ActivityLevel activity;
  final UserGoal goal;
  final int? dailyCalories;

  const UserInfo({
    required this.id,
    required this.name,
    required this.gender,
    required this.height,
    required this.weight,
    required this.birthDate,
    required this.activity,
    required this.goal,
    this.dailyCalories,
  });

  UserInfo copyWith({
    String? id,
    String? name,
    Gender? gender,
    int? height,
    int? weight,
    DateTime? birthDate,
    ActivityLevel? activity,
    UserGoal? goal,
    int? dailyCalories,
  }) {
    return UserInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      birthDate: birthDate ?? this.birthDate,
      activity: activity ?? this.activity,
      goal: goal ?? this.goal,
      dailyCalories: dailyCalories ?? this.dailyCalories,
    );
  }
}
