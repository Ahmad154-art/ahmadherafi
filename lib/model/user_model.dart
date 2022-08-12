// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
     required  this.status,
     required  this.id,
     required   this.message,
     required   this.role,
   //  required  this.token,
    });

    bool status;
    List<Id> id;
    String message;
    int role;
    //String? token;

    factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"],
        id: List<Id>.from(json["id"].map((x) => Id.fromJson(x))),
        message: json["message"],
        role: json["role"],
      //  token: json["token"] ==null?null:json["token"]!,
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "id": List<dynamic>.from(id.map((x) => x.toJson())),
        "message": message,
        "role": role,
       // "token": token,
    };
}

class Id {
    Id({
     required   this.id,
      required this.classId,
    });

    int id;
    int? classId;

    factory Id.fromJson(Map<String, dynamic> json) => Id(
        id: json["id"],
        classId: json["class_id"] == null? null : json["class_id"]! ,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "class_id": classId,
    };
}
