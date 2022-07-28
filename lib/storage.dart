import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorge {
  final storge = new FlutterSecureStorage();
  Future<void> save(String key, String value) async {
    await storge.write(key: key, value: value);
  }

  // Future<void> saveRole(var key, var value) async {
  //   await storge.write(key: key, value: value);
  // }

  Future<String?> read(String key) async {
    return await storge.read(key: key);
  }
  // Future<String?> readRole(String key) async {
  //   await storge.read(key: key);
  // }

  Future<String?> delet(String key) async {
    await storge.delete(key: key);
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:futurehope/main.dart';
// import 'package:futurehope/view/login/email_service.dart';
// import 'package:futurehope/view/login/login_service.dart';
// import 'package:get/get.dart';

// class Auth extends GetMiddleware {
//   EmailService service = new EmailService();
//   var token = '';

//   @override
//   RouteSettings? redirect(String? route) {
//     token = service.token;
//     if (sharepref!.getString(token) != null) {
//       return RouteSettings(name: "/studenthome");
//     }
//   }
// }
