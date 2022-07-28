// To parse this JSON data, do
//
//     final teacherClasses = teacherClassesFromJson(jsonString);

import 'dart:convert';

TeacherClasses teacherClassesFromJson(String str) => TeacherClasses.fromJson(json.decode(str));

String teacherClassesToJson(TeacherClasses data) => json.encode(data.toJson());

class TeacherClasses {
    TeacherClasses({
      required  this.teacherClass,
    });

    List<TeacherClass> teacherClass;

    factory TeacherClasses.fromJson(Map<String, dynamic> json) => TeacherClasses(
        teacherClass: List<TeacherClass>.from(json["teacher_class"].map((x) => TeacherClass.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "teacher_class": List<dynamic>.from(teacherClass.map((x) => x.toJson())),
    };
}

class TeacherClass {
    TeacherClass({
      required  this.name,
       required this.id,
    });

    String name;
    int id;

    factory TeacherClass.fromJson(Map<String, dynamic> json) => TeacherClass(
        name: json["name"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
    };
}
