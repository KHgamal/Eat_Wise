import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../../../domain/entities/user_info.dart';
import '../../../domain/usecases/calculate_daily_calories.dart';
import '../../../domain/usecases/save_user_info.dart';
import '../../../domain/usecases/get_user_info.dart';
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
  }) : super(const UserState()) {
    on<GenderSelected>((e, emit) {
      emit(state.copyWith(gender: e.gender));
    });

    on<NameSelected>((e, emit) {
      emit(state.copyWith(name: e.name));
    });

    on<BirthDateSelected>((e, emit) {
      emit(state.copyWith(birthDate: e.birthDate));
    });

    on<HeightChanged>((e, emit) {
      emit(state.copyWith(height: e.height));
    });

    on<WeightChanged>((e, emit) {
      emit(state.copyWith(weight: e.weight));
    });

    on<ActivityLevelSelected>((e, emit) {
      emit(state.copyWith(activityLevel: e.level));
    });

    on<GoalSelected>((e, emit) {
      emit(state.copyWith(goal: e.goal));
    });

    on<SubmitOnboarding>((e, emit) async { 
      final userInfo = UserInfo(
        id: const Uuid().v4(),
        name: state.name!,
        birthDate: state.birthDate!,
        gender: state.gender!,
        height: state.height!,
        weight: state.weight!,
        activity: state.activityLevel!,
        goal: state.goal!,
      );
      await saveUserInfo(userInfo);
      final calories = calculateDailyCalories(userInfo);

      emit(state.copyWith(dailyCalories: calories,));
    });

    on<LoadUser>((event, emit) async {
      final  user = await getUserInfo();
      final calories = user==null? 1 :calculateDailyCalories(user);

      if (user != null) {
        emit(
          state.copyWith(
            name: user.name,
            birthDate: user.birthDate,
            gender: user.gender,
            height: user.height,
            weight: user.weight,
            activityLevel: user.activity,
            goal: user.goal,
            dailyCalories: calories
          ),
        );
      }
    });
  }
}