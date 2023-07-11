import 'package:whatsapp_clone/models/reqres_model.dart';
import 'package:whatsapp_clone/services/reqres_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider<UserInfoService>((ref) => UserInfoService(),);

final reqresApiProvider = FutureProvider<List<Data>?>((ref) {
  return ref.read(apiProvider).get();
});