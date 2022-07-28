// To parse this JSON data, do
//
//     final teacherSubjects = teacherSubjectsFromJson(jsonString);

import 'dart:convert';

TeacherSubjects teacherSubjectsFromJson(String str) => TeacherSubjects.fromJson(json.decode(str));

String teacherSubjectsToJson(TeacherSubjects data) => json.encode(data.toJson());

class TeacherSubjects {
    TeacherSubjects({
      required this.teacherSubject,
    });

    List<TeacherSubject> teacherSubject;

    factory TeacherSubjects.fromJson(Map<String, dynamic> json) => TeacherSubjects(
        teacherSubject: List<TeacherSubject>.from(json["teacher_subject"].map((x) => TeacherSubject.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "teacher_subject": List<dynamic>.from(teacherSubject.map((x) => x.toJson())),
    };
}

class TeacherSubject {
    TeacherSubject({
      required this.id,
       required this.name,
    });

    int id;
    String name;

    factory TeacherSubject.fromJson(Map<String, dynamic> json) => TeacherSubject(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
