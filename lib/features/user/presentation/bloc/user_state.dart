import '../../domain/entities/user_info.dart';

class UserState {
  final UserInfo? user;
  final bool isLoading;
  final bool isSaving;
  final String? error;

  UserState({this.user, this.isLoading = false, this.isSaving = false, this.error});

  UserState copyWith({UserInfo? user, bool? isLoading, bool? isSaving, String? error}) {
    return UserState(
      user: user ?? this.user,
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
      error: error ?? this.error,
    );
  }
}
