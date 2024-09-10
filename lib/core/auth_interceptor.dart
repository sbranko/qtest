import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String token;

  AuthInterceptor(this.token);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add the Bearer token to the Authorization header
    options.headers['Authorization'] = 'Bearer $token';

    // Continue with the request
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // You can handle token expiration or other errors here
    if (err.response?.statusCode == 401) {
      // Handle token expiration, unauthorized access, or refresh token logic here
    }

    // Continue with the error
    return super.onError(err, handler);
  }
}
