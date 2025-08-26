import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_d_3/tugas_14/model/user_model.dart';

Future<List<Datum>> getUser() async {
  final response = await http.get(Uri.parse("https://api.jikan.moe/v4/anime"));
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body)["data"];
    return userJson.map((json) => Datum.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
