import 'package:diakron_stores/data/repositories/auth/auth_repository.dart';
import 'package:diakron_stores/utils/command.dart';
import 'package:diakron_stores/utils/result.dart';

class LogoutViewModel {
  LogoutViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    logout = Command0(_logout);
  }
  final AuthRepository _authRepository;
  late Command0 logout;

  Future<Result> _logout() async {
    await _authRepository.logout();    

    return Result.ok('Success');
    
  }
}
