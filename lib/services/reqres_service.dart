import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:whatsapp_clone/constants/apiservice_path.dart';
import 'package:whatsapp_clone/models/reqres_model.dart';

class UserInfoService{
  Future<List<Data>?> get() async {
    Response response = await http.get(Uri.parse(ApiServicePath.userInfoServicePath));
    if (response.statusCode == 200) {
      final List result = jsonDecode(utf8.decode(response.bodyBytes))['data'];
      return result.map((e) => Data.fromJson(e)).toList();
    }
    else{
      return null;
    }
  }
}