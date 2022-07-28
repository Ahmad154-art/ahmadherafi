// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
    Result({
      required  this.status,
       required this.message,
       required this.result,
    });

    bool status;
    String message;
    List<ResultElementShow> result;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        status: json["status"],
        message: json["message"],
        result: List<ResultElementShow>.from(json["result"].map((x) => ResultElementShow.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
    };
}

class ResultElementShow {
    ResultElementShow({
      required  this.id,
      required  this.mark,
      required  this.firstName,
       required this.lastName,
    });

    int id;
    int mark;
    String firstName;
    String lastName;

    factory ResultElementShow.fromJson(Map<String, dynamic> json) => ResultElementShow(
        id: json["id"],
        mark: json["mark"],
        firstName: json["first_name"],
        lastName: json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "mark": mark,
        "first_name": firstName,
        "last_name": lastName,
    };
}
