import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/calculate_daily_calories.dart';
import '../../domain/usecases/get_user_info.dart';
import '../../domain/usecases/save_user_info.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final SaveUserInfo saveUserInfo;
  final GetUserInfo getUserInfo;
  final CalculateDailyCalories calculateDailyCalories;

  UserBloc({
    required this.saveUserInfo,
    required this.getUserInfo,
    required this.calculateDailyCalories,
  }) : super(UserState()) {
    on<LoadUserEvent>(_onLoadUser);
    on<CreateUserEvent>(_onCreateUser);
    on<UpdateUserEvent>(_onUpdateUser);
    on<RecalculateCaloriesEvent>(_onRecalculate);
  }

  Future<void> _onLoadUser(LoadUserEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final user = await getUserInfo.call();
      emit(state.copyWith(user: user, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onCreateUser(CreateUserEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(isSaving: true));
    try {
      final calories = calculateDailyCalories.call(event.user);
      final updatedUser = event.user.copyWith(dailyCalories: calories);
      await saveUserInfo.call(updatedUser);
      emit(state.copyWith(user: updatedUser, isSaving: false));
    } catch (e) {
      emit(state.copyWith(isSaving: false, error: e.toString()));
    }
  }

  Future<void> _onUpdateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    emit(state.copyWith(isSaving: true));
    try {
      final calories = calculateDailyCalories.call(event.user);
      final updatedUser = event.user.copyWith(dailyCalories: calories);
      await saveUserInfo.call(updatedUser);
      emit(state.copyWith(user: updatedUser, isSaving: false));
    } catch (e) {
      emit(state.copyWith(isSaving: false, error: e.toString()));
    }
  }

  Future<void> _onRecalculate(RecalculateCaloriesEvent event, Emitter<UserState> emit) async {
    final user = state.user;
    if (user == null) return;
    emit(state.copyWith(isSaving: true));
    try {
      final calories = calculateDailyCalories.call(user);
      final updatedUser = user.copyWith(dailyCalories: calories);
      await saveUserInfo.call(updatedUser);
      emit(state.copyWith(user: updatedUser, isSaving: false));
    } catch (e) {
      emit(state.copyWith(isSaving: false, error: e.toString()));
    }
  }
}
