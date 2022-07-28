import 'package:futurehope/model/exam_type_model.dart';
import 'package:http/http.dart' as http;
import 'package:futurehope/config/server_config.dart';

class ExamType {
  var url = Uri.parse(serverConfig.domainName + serverConfig.examtype);
  Future<List<ResultElement>> examType(var year, var classId, var subId) async {
    var response = await http.post(url,
        headers: {'Accept': 'application/json'},
        body: {
          "subject_id": "$subId",
           "class_id": "$classId",
            "year": year
            });
    //print('aa');
    print(response.statusCode);
    print(response.body);

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
