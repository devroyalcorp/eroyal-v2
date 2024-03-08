import 'package:dio/dio.dart';

import 'constant.dart';
import 'result.dart';

class DioHelper {
  static Dio init() {
    final option = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
      contentType: Headers.jsonContentType,
      // headers: {"Authorization": "Bearer ${LocalDb.credential?.jwtToken}"},
    );

    final interceptors = InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) async {
      return handler.next(response);
    }, onError: (DioException e, handler) async {
      return handler.next(e);
    });

    final dio = Dio(option);

    dio.interceptors.add(interceptors);

    return dio;
  }

  static Result<T> handleErr<T>(DioException dioErr) {
    String errMsg = "";
    String criticalErr = "";

    try {
      errMsg = "${dioErr.response?.data["message"]}";

      if (errMsg.isEmpty) {
        errMsg = "${dioErr.response?.statusMessage}";
      }
    } catch (e) {
      criticalErr = "${dioErr.response?.statusMessage}";
    }

    if (dioErr.response?.statusCode == 401) {
      // if (LocalDb.anonymouseLoggedin) {
      //   Get.toNamed(Routes.LOGIN)?.then((_) => Get.back());
      // } else {
      //   LocalDb.logout();

      //   Get.offAllNamed(Routes.LOGIN);
      // }

      // return Result<T>.tokenExpired(
      //   message: errMsg.isNotEmpty ? errMsg : criticalErr,
      //   code: dioErr.response?.statusCode ?? -1,
      // );
    }

    return Result<T>.error(
      message: errMsg.isNotEmpty ? errMsg : criticalErr,
      code: dioErr.response?.statusCode ?? -1,
    );
  }

  static Result<T> handleFatalErr<T>(dynamic e) {
    return Result<T>.error(message: "$e");
  }
}
