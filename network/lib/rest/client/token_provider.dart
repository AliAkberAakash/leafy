
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _storage = FlutterSecureStorage();

Future<String> tokenProvider() async {
  final token = await _storage.read(key: 'auth_token');
  return token ?? '';
}