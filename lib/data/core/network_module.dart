import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @Named("baseUrl")
  String get weatherUrl => 'https://api.openweathermap.org/data/2.5';
  @Named('weatherDio')
  Dio get weatherDio => _dio(weatherUrl, []);

  Dio _dio(
    String url,
    List<Interceptor> interceptors,
  ) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {'Content-Type': 'application/json'},
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    dio.interceptors.addAll(interceptors);
    return dio;
  }
}
