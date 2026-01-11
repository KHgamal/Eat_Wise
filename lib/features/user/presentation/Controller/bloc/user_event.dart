import '../../../domain/entities/user_info.dart';

abstract class UserEvent {}

class NameSelected extends UserEvent {
  final String name;
  NameSelected(this.name);
}

class BirthDateSelected extends UserEvent {
  final DateTime birthDate;
  BirthDateSelected(this.birthDate);
}

class GenderSelected extends UserEvent {
  final Gender gender;
  GenderSelected(this.gender);
}

class HeightChanged extends UserEvent {
  final int height;
  HeightChanged(this.height);
}

class WeightChanged extends UserEvent {
  final int weight;
  WeightChanged(this.weight);
}

class ActivityLevelSelected extends UserEvent {
  final ActivityLevel level;
  ActivityLevelSelected(this.level);
}

class GoalSelected extends UserEvent {
  final UserGoal goal;
  GoalSelected(this.goal);
}

class LoadUser extends UserEvent {}
class SubmitOnboarding extends UserEvent {}

