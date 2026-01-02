import '../entities/user_info.dart';
import '../repositories/user_repository.dart';

class SaveUserInfo {
  final UserRepository repository;
  SaveUserInfo(this.repository);

  Future<void> call(UserInfo user) async {
    await repository.saveUserInfo(user);
  }
}
