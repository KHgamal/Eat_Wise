import 'package:hive/hive.dart';
import '../../domain/entities/user_info.dart' as domain;

part 'user_model.g.dart';

@HiveType(typeId: 2)
enum Gender {
  @HiveField(0)
  male,
  @HiveField(1)
  female,
}

@HiveType(typeId: 3)
enum Goal {
  @HiveField(0)
  loseWeight,
  @HiveField(1)
  gainWeight,
  @HiveField(2)
  maintainWeight,
}

@HiveType(typeId: 4)
enum ActivityLevel {
  @HiveField(0)
  sedentary,
  @HiveField(1)
  lightlyActive,
  @HiveField(2)
  moderatelyActive,
  @HiveField(3)
  veryActive,
}

@HiveType(typeId: 1)
class UserModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final Gender gender;

  @HiveField(3)
  final int height;

  @HiveField(4)
  final int weight;

  @HiveField(5)
  final DateTime birthDate;

  @HiveField(6)
  final ActivityLevel activity;

  @HiveField(7)
  final Goal goal;

  @HiveField(8)
  final int? dailyCalories;

  UserModel({
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

  /// Convert from Domain UserInfo -> Hive UserModel
  factory UserModel.fromDomain(domain.UserInfo u) => UserModel(
        id: u.id,
        name: u.name,
        gender: _mapDomainGenderToHive(u.gender),
        height: u.height,
        weight: u.weight,
        birthDate: u.birthDate,
        activity: _mapDomainActivityToHive(u.activity),
        goal: _mapDomainGoalToHive(u.goal),
        dailyCalories: u.dailyCalories,
      );

  /// Convert Hive UserModel -> Domain UserInfo
  domain.UserInfo toDomain() => domain.UserInfo(
        id: id,
        name: name,
        gender: _mapHiveGenderToDomain(gender),
        height: height,
        weight: weight,
        birthDate: birthDate,
        activity: _mapHiveActivityToDomain(activity),
        goal: _mapHiveGoalToDomain(goal),
        dailyCalories: dailyCalories,
      );

  // ---------------- Mapping Functions ----------------

  static Gender _mapDomainGenderToHive(domain.Gender g) {
    switch (g) {
      case domain.Gender.male:
        return Gender.male;
      case domain.Gender.female:
        return Gender.female;
    }
  }

  static domain.Gender _mapHiveGenderToDomain(Gender g) {
    switch (g) {
      case Gender.male:
        return domain.Gender.male;
      case Gender.female:
        return domain.Gender.female;
    }
  }

  static ActivityLevel _mapDomainActivityToHive(domain.ActivityLevel a) {
    switch (a) {
      case domain.ActivityLevel.sedentary:
        return ActivityLevel.sedentary;
      case domain.ActivityLevel.lightlyActive:
        return ActivityLevel.lightlyActive;
      case domain.ActivityLevel.moderatelyActive:
        return ActivityLevel.moderatelyActive;
      case domain.ActivityLevel.veryActive:
        return ActivityLevel.veryActive;
    }
  }

  static domain.ActivityLevel _mapHiveActivityToDomain(ActivityLevel a) {
    switch (a) {
      case ActivityLevel.sedentary:
        return domain.ActivityLevel.sedentary;
      case ActivityLevel.lightlyActive:
        return domain.ActivityLevel.lightlyActive;
      case ActivityLevel.moderatelyActive:
        return domain.ActivityLevel.moderatelyActive;
      case ActivityLevel.veryActive:
        return domain.ActivityLevel.veryActive;
    }
  }

  static Goal _mapDomainGoalToHive(domain.UserGoal g) {
    switch (g) {
      case domain.UserGoal.loseWeight:
        return Goal.loseWeight;
      case domain.UserGoal.gainWeight:
        return Goal.gainWeight;
      case domain.UserGoal.maintainWeight:
        return Goal.maintainWeight;
    }
  }

  static domain.UserGoal _mapHiveGoalToDomain(Goal g) {
    switch (g) {
      case Goal.loseWeight:
        return domain.UserGoal.loseWeight;
      case Goal.gainWeight:
        return domain.UserGoal.gainWeight;
      case Goal.maintainWeight:
        return domain.UserGoal.maintainWeight;
    }
  }
}
