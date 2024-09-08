import 'package:dio/dio.dart';

import 'auth_interceptor.dart';

class DioClient {
  final Dio _dio = Dio();
  final String token = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiOGQ3Zjc2OTQ3OTA0YTAxMTI4NmRjNzMyYzU1MjM0ZSIsInN1YiI6IjYwMzM3ODBiMTEzODZjMDAzZjk0ZmM2YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.XYuIrLxvowrkevwKx-KhOiOGZ2Tn-R8tEksXq842kX4';

  DioClient() {
    _dio.options = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
    );
    _dio.interceptors.add(AuthInterceptor(token)); // Add the custom interceptor
  }

  Dio get dio => _dio;
}
