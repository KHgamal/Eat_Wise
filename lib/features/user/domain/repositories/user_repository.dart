import '../entities/user_info.dart';

abstract class UserRepository {
  Future<void> saveUserInfo(UserInfo user);
  Future<UserInfo?> getUserInfo();
  Future<void> updateUserInfo(UserInfo user);
}
