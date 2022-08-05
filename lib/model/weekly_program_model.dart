// To parse this JSON data, do
//
//     final subject = subjectFromJson(jsonString);

import 'dart:convert';

Subject subjectFromJson(String str) => Subject.fromJson(json.decode(str));

String subjectToJson(Subject data) => json.encode(data.toJson());

class Subject {
    Subject({
       required this.stute,
      required  this.data,
    });

    bool stute;
    List<Datum> data;

    factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        stute: json["stute"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "stute": stute,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
      required  this.subject,
    });

    String subject;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        subject: json["subject"],
    );

    Map<String, dynamic> toJson() => {
        "subject": subject,
    };
}
