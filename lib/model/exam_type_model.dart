// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
    Result({
       required this.status,
       required this.message,
      required this.result,
    });

    bool status;
    String message;
    List<ResultElement> result;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        status: json["status"],
        message: json["message"],
        result: List<ResultElement>.from(json["result"].map((x) => ResultElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
    };
}

class ResultElement {
    ResultElement({
      required this.type,
    });

    String type;

    factory ResultElement.fromJson(Map<String, dynamic> json) => ResultElement(
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
    };
}
