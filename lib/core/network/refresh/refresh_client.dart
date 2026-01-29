import 'package:dio/dio.dart';
import 'package:no_ai_sns/core/data/DTO/refresh/dto_refresh_response.gen.dart';
import 'package:no_ai_sns/core/data/DTO/refresh/dto_refrsh_request.gen.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'refresh_client.g.dart';

@RestApi()
abstract class RefreshClient {
  factory RefreshClient(Dio dio, {String? baseUrl}) = _RefreshClient;

  @POST('/auth/refresh')
  Future<RefreshResponseDTO> refrsh(@Body() RefrshRequestDTO requestDTO);
}
