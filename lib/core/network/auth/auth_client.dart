import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_check_nickname_response.gen.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_login_response.gen.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_register_request.gen.dart';
import 'package:no_ai_sns/core/data/DTO/auth/dto_register_response.gen.dart';
import 'package:no_ai_sns/features/profile/data/dto/dto_me.gen.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String? baseUrl}) = _AuthClient;

  @POST('/auth/register')
  Future<RegisterResponseDTO> register(@Body() RegisterRequestDTO request);

  @POST('/auth/login')
  @FormUrlEncoded()
  Future<LoginResponseDTO> login(@Body() Map<String, String> credentials);

  @GET('/users/check-nickname')
  Future<CheckNicknameResponseDTO> checkNickname(
    @Query('nickname') String nickname,
  );

  @GET('/users/me')
  Future<MeDTO> getMe();

  // @GET('/users/')
}
