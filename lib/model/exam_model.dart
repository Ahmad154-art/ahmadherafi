// To parse this JSON data, do
//
//     final finalExam = finalExamFromJson(jsonString);

import 'dart:convert';

FinalExam finalExamFromJson(String str) => FinalExam.fromJson(json.decode(str));

String finalExamToJson(FinalExam data) => json.encode(data.toJson());

class FinalExam {
    FinalExam({
       required this.finalExam,
    });

    List<FinalExamElement> finalExam;

    factory FinalExam.fromJson(Map<String, dynamic> json) => FinalExam(
        finalExam: List<FinalExamElement>.from(json["final_exam"].map((x) => FinalExamElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "final_exam": List<dynamic>.from(finalExam.map((x) => x.toJson())),
    };
}

class FinalExamElement {
    FinalExamElement({
       required this.day,
      required  this.subject,
      required  this.time,
     // required  this.createdAt,
    });

    String day;
    String subject;
    String time;
   // String createdAt;

    factory FinalExamElement.fromJson(Map<String, dynamic> json) => FinalExamElement(
        day: json["day"],
        subject: json["subject"],
        time: json["time"],
       // createdAt: json["created_at"],
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "subject": subject,
        "time": time,
       // "created_at": createdAt,
    };
}
