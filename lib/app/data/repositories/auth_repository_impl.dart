import '../../core/dio.dart';
import '../../core/result.dart';
import '../../domain/entities/credential_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecase/auth/login.dart';
import '../models/login/credential_model.dart';

class AuthRepositoryImpl extends AuthRepository {
  final _dio = DioHelper.init();

  @override
  Future<Result<CredentialEntity>> login({
    required LoginParams params,
  }) async {
    const endpoint = "/auth/sign_in.json";
    final data = {
      "username": params.email,
      "password": params.password,
    };

    print(data);

    try {
      var response = await _dio.post(
        endpoint,
        data: data,
      );
      print("AAAAAAAAAA");
      print(response);

      return Result.success(CredentialModel.fromJson(response.data["user"]));
    } catch (e) {
      print("e2");
      return DioHelper.handleFatalErr(e);
    }
  }
}
