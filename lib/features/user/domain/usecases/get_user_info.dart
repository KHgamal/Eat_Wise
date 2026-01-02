import '../entities/user_info.dart';
import '../repositories/user_repository.dart';

class GetUserInfo {
  final UserRepository repository;
  GetUserInfo(this.repository);

  Future<UserInfo?> call() async {
    return await repository.getUserInfo();
  }
}
