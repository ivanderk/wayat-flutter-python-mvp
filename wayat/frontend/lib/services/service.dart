import 'package:flutter_config/flutter_config.dart';

class Service {
  final String baseUrl = FlutterConfig.get('BASE_URL') ?? '';
}