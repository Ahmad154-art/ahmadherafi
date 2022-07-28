// To parse this JSON data, do
//
//     final students = studentsFromJson(jsonString);

import 'dart:convert';

Students studentsFromJson(String str) => Students.fromJson(json.decode(str));

String studentsToJson(Students data) => json.encode(data.toJson());

class Students {
    Students({
      required this.students,
    });

    List<Student> students;

    factory Students.fromJson(Map<String, dynamic> json) => Students(
        students: List<Student>.from(json["students"].map((x) => Student.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "students": List<dynamic>.from(students.map((x) => x.toJson())),
    };
}

class Student {
    Student({
     required  this.id,
      required this.firstName,
      required  this.lastName,
    });

    int id;
    String firstName;
    String lastName;

    factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
    };
}
