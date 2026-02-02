import 'dart:convert';
import 'package:dio/dio.dart';

Stream<Map<String, dynamic>> sseStream({
  required Dio dio,
  required String path,
  required Map<String, dynamic> query,
}) async* {
  final res = await dio.get<ResponseBody>(
    path,
    queryParameters: query,
    options: Options(responseType: ResponseType.stream),
  );

  final lines = res.data!.stream
      .cast<List<int>>()
      .transform(utf8.decoder)
      .transform(const LineSplitter());

  String? event;
  StringBuffer data = StringBuffer();

  await for (final line in lines) {
    if (line.isEmpty) {
      if (data.isNotEmpty) {
        yield {'event': event, 'data': jsonDecode(data.toString())};
      }
      event = null;
      data = StringBuffer();
      continue;
    }
    if (line.startsWith('event:')) {
      event = line.substring(6).trim();
    } else if (line.startsWith('data:')) {
      data.write(line.substring(5).trim());
    }
  }
}
