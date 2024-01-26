import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'response/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://qutb.uz/api")
abstract class ApiService {
  // static const String users = "/users";

  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(
      receiveTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      contentType: "application/json",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );

    return _ApiService(dio, baseUrl: baseUrl);
  }

  // _ApiService(Dio dio, {String? baseUrl}) {}

  @POST("/auth/login")
  Future<LoginResponse> login(@Body() Map<String, dynamic> body);

  @POST("/auth/register")
  Future register(@Body() Map<String, dynamic> body);
}
