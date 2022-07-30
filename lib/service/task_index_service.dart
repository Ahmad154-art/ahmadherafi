import 'package:futurehope/model/exam_type_model.dart';
import 'package:futurehope/model/task_index_model.dart';
import 'package:http/http.dart' as http;
import 'package:futurehope/config/server_config.dart';

class TaskIndexService {
  var url = Uri.parse(serverConfig.domainName + serverConfig.taskIndex);
  Future<List<TheDataIs>> taskIndex(var classId, var subjectId) async {
    var response = await http.post(url, headers: {
      'Accept': 'application/json'
    }, body: {
      "subject_id": "$subjectId",
      "class_id": "$classId",
    });
    //print('aa');
    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {
      var result = informationFromJson(response.body);
      print(result);
      return result.theDataIs;
    } else if (response.statusCode == 500) {
      return [];
    } else {
      return [];
    }
  }
}
