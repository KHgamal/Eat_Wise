import 'package:hive/hive.dart';
import '../models/user_model.dart';

abstract class UserLocalDataSource {
  Future<void> cacheUser(UserModel user);
  Future<UserModel?> getCachedUser();
}

class UserLocalDataSourceImpl implements UserLocalDataSource {
  static const String boxName = 'user_info';
  static const String key = 'data';

  @override
  Future<void> cacheUser(UserModel user) async {
    final box = Hive.box<UserModel>(boxName);
    await box.put(key, user);
  }

  @override
  Future<UserModel?> getCachedUser() async {
    final box = Hive.box<UserModel>(boxName);
    return box.get(key);
  }
}
