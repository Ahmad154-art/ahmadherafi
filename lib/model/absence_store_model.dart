// To parse this JSON data, do
//
//     final studentabcence = studentabcenceFromJson(jsonString);

import 'dart:convert';
import '../controller/absant_controller.dart';

Studentabcence studentabcenceFromJson(String str) =>
    Studentabcence.fromJson(json.decode(str));

String studentabcenceToJson(Studentabcence data) => json.encode(data.toJson());

class Studentabcence {
  Studentabcence({
    required this.studentAbsence,
  });

  List<StudentAbsence> studentAbsence;

  factory Studentabcence.fromJson(Map<String, dynamic> json) => Studentabcence(
        studentAbsence: List<StudentAbsence>.from(
            json["student_absence"].map((x) => StudentAbsence.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "student_absence":
            List<dynamic>.from(studentAbsence.map((x) => x.toJson())),
      };
}

class StudentAbsence {
  StudentAbsence({
    required this.studentId,
    required this.classId,
    required this.type,
    required this.reason,
  });

  int studentId;
  int classId;
  Status type;
  String reason;

  factory StudentAbsence.fromJson(Map<String, dynamic> json) => StudentAbsence(
        studentId: json["student_id"],
        classId: json["class_id"],
        type: json["type"],
        reason: json["reason"],
      );

  Map<String, dynamic> toJson() {
    Map<Status, String> toStringMap = {
      Status.absent: "absant",
      Status.delay: "delay",
      Status.present: "presence"
    };

    return {
      "student_id": studentId,
      "class_id": classId,
      "type": toStringMap[type],
      "reason": reason
    };
  }
}
