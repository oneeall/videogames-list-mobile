import 'package:dio/dio.dart';
import 'package:videogames_list_mobile/core/constants/api_constants.dart';

class ApiKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    /// Append the API key to every request automatically
    options.queryParameters['key'] = RawgApiConstants.apiKey;
    /// continue the request chain
    handler.next(options);
  }
}
