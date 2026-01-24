import 'package:flutter_dotenv/flutter_dotenv.dart';

String get baseURL => dotenv.get('BASE_URL');
