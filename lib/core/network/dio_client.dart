import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:videogames_list_mobile/core/network/interceptors/api_key_interceptor.dart';

import '../constants/api_constants.dart';

class RawgDioClient {
  final Dio dio;

  RawgDioClient()
    : dio = Dio(
        BaseOptions(
          baseUrl: RawgApiConstants.baseUrl,
          connectTimeout: const Duration(seconds: 3),
          receiveTimeout: const Duration(seconds: 5),
        ),
      ) {
    _initInterceptors();
  }

  void _initInterceptors() {
    dio.interceptors.add(ApiKeyInterceptor());

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
          error: true,
        ),
      );
    }
  }
}
