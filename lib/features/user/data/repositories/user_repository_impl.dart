import '../../domain/entities/user_info.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/local_user_datasource.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource localDataSource;

  UserRepositoryImpl( {required this.localDataSource});

  @override
  Future<void> saveUserInfo(UserInfo user) async {
    final model = UserModel.fromDomain(user);
    await localDataSource.cacheUser(model);
  }

  @override
  Future<UserInfo?> getUserInfo() async {
    final model = await localDataSource.getCachedUser();
    return model?.toDomain();
  }

  @override
  Future<void> updateUserInfo(UserInfo user) async {
    final model = UserModel.fromDomain(user);
    await localDataSource.cacheUser(model);
  }
}
