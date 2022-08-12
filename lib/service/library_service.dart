//import 'dart:convert';

import 'dart:convert';

import 'package:futurehope/config/server_config.dart';
import 'package:futurehope/model/library_model.dart';
import 'package:futurehope/model/installment_model.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LibraryService {
  Future<List<Datum>> library() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // int? userId = prefs.getInt('id');
    var url = Uri.parse(serverConfig.domainName + serverConfig.library);
    var response = await http.get(
      url,
      headers: {'Accept': 'application/json'},
    );

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      print('mmmmmmmmmm');
      var book = libraryFromJson(response.body);

      print('5555555555');
      // print(teacherSubjects.teacherSubject.toList());
      return book.data;
    } else {
      return [];
    }
  }
}
