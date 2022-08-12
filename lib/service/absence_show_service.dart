import 'dart:convert';

import 'package:futurehope/config/server_config.dart';

import 'package:futurehope/model/absence_show_model.dart';

import 'package:http/http.dart' as http;

class AbcenseShowService {
  // var body;
  Future<List<Datum>> getAbsence(int id) async {
    var url =
        Uri.parse(serverConfig.domainName + serverConfig.absenceIndex + '$id');
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var index = absenceshowFromJson(response.body);

      return index.data;
    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
