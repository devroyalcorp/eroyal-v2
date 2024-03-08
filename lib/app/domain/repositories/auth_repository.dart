import '../../core/result.dart';
import '../entities/credential_entity.dart';
import '../usecase/auth/login.dart';

abstract class AuthRepository {
  Future<Result<CredentialEntity>> login({
    required LoginParams params,
  });
}
