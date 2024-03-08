import 'package:eroyal/app/core/result.dart';
import 'package:eroyal/app/data/repositories/auth_repository_impl.dart';
import 'package:eroyal/app/domain/entities/credential_entity.dart';
import 'package:eroyal/app/domain/repositories/auth_repository.dart';

import '../../../core/usecase.dart';

class LoginUseCase extends UseCase<CredentialEntity, LoginParams> {
  @override
  Future<Result<CredentialEntity>> call(LoginParams params) async {
    AuthRepository authRepository = AuthRepositoryImpl();

    if (!await hasInternetConnection) {
      return Result.noInternet();
    }

    return authRepository.login(params: params);
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
