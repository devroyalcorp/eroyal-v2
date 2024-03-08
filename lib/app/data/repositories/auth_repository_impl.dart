import 'package:dio/dio.dart';

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
    const endpoint = "/auth/login";
    final data = {
      "email": params.email,
      "password": params.password,
    };

    try {
      var response = await _dio.post(
        endpoint,
        data: data,
      );

      return Result.success(CredentialModel.fromJson(response.data["user"]));
    } on DioException catch (e) {
      return DioHelper.handleErr(e);
    } catch (e) {
      return DioHelper.handleFatalErr(e);
    }
  }
}
