import 'package:http/http.dart' as http;
import 'package:futurehope/config/server_config.dart';

class TaskStoreService {
  var url = Uri.parse(serverConfig.domainName + serverConfig.taskStore);

  Future<bool> taskStore(
      var classId, var subjectId, var pageNumber, var description) async {
  
    var response = await http.post(url, headers: {
      "Accept": "application/json"
    }, body: {
      "class_id": "$classId",
      "subject_id": "$subjectId",
      "number_page": "$pageNumber",
      "descreption": "$description"
    });
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
