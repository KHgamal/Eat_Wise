import '../../domain/entities/user_info.dart';

abstract class UserEvent {}

class LoadUserEvent extends UserEvent {}

class CreateUserEvent extends UserEvent {
  final UserInfo user;
  CreateUserEvent(this.user);
}

class UpdateUserEvent extends UserEvent {
  final UserInfo user;
  UpdateUserEvent(this.user);
}

class RecalculateCaloriesEvent extends UserEvent {}
