import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_info.dart';

class UserState extends Equatable {
  final String? name;
  final Gender? gender;
  final int? height ;
  final int? weight;
  final int? dailyCalories;
  final DateTime? birthDate;
  final ActivityLevel? activityLevel;
  final UserGoal? goal;

  const UserState({
    this.name,
    this.birthDate,
    this.gender,
    this.height =170,
    this.dailyCalories,
    this.weight =70,
    this.activityLevel,
    this.goal,
  });


  UserState copyWith({
    String? name,
    DateTime? birthDate,
    Gender? gender,
    int? height,
    int? weight,
    ActivityLevel? activityLevel,
    UserGoal? goal,
    int? dailyCalories,
  }) {
    return UserState(
      name: name ?? this.name,
      dailyCalories: dailyCalories ?? this.dailyCalories,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      activityLevel: activityLevel ?? this.activityLevel,
      goal: goal ?? this.goal,
    );
  }

  @override
  List<Object?> get props => [
    name,
    birthDate,
    gender,
    height,
    weight,
    activityLevel,
    goal,
    dailyCalories
  ];
}
