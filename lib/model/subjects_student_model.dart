// To parse this JSON data, do
//
//     final subjects = subjectsFromJson(jsonString);

import 'dart:convert';

Subjects subjectsFromJson(String str) => Subjects.fromJson(json.decode(str));

String subjectsToJson(Subjects data) => json.encode(data.toJson());

class Subjects {
    Subjects({
       required this.subjects,
    });

    List<Subject> subjects;

    factory Subjects.fromJson(Map<String, dynamic> json) => Subjects(
        subjects: List<Subject>.from(json["subjects"].map((x) => Subject.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "subjects": List<dynamic>.from(subjects.map((x) => x.toJson())),
    };
}

class Subject {
    Subject({
     required  this.id,
     required  this.name,
    });

    int id;
    String name;

    factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
