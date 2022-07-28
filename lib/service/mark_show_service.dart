import 'package:futurehope/model/mark_show_model.dart';
import 'package:http/http.dart' as http;
import 'package:futurehope/config/server_config.dart';

class MarkShow {
  var url = Uri.parse(serverConfig.domainName + serverConfig.markShow);
  Future<List<ResultElementShow>> markShow(
      var year, var classId, var subId, var type) async {
    var response = await http.post(url, headers: {
      'Accept': 'application/json'
    }, body: {
      "subject_id": "$subId",
      "class_id": "$classId",
      "year": "$year",
      "type": "$type"
    });
    //print('aa');
    print(response.statusCode);
    print(response.body);
    print(type);

    if (response.statusCode == 200) {
      var result = resultFromJson(response.body);
      print(result);
      return result.result;
    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
