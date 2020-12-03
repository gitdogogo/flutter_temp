import 'package:dio/dio.dart';

class Http {
  static Dio _dio;
  static Dio getInstance() {
    if (null == _dio) {
      _dio = Dio(BaseOptions(
          baseUrl: '',
          connectTimeout: 5000,
          receiveTimeout: 30000,
          sendTimeout: 30000));
    }
    return _dio;
  }
}
