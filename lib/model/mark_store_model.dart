/*import 'dart:convert';

Marks studentsFromJson(String str) => Marks.fromJson(json.decode(str));

String studentsToJson(Marks data) => json.encode(data.toJson());

class Marks {
  Marks({
    required this.marks,
  });

  List<Marks> marks;

  factory Marks.fromJson(Map<String, dynamic> json) => Marks(
        marks:
            List<Marks>.from(json["student_id"].map((x) => Marks.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "student_mark": List<dynamic>.from(marks.map((x) => x.toJson())),
      };
}

class MarkStoreModel {
  int? student_id;
  var mark;
  int? subId;
  int? classId;
  var year;
  var type;

  MarkStoreModel(
      {required this.student_id,
      required this.mark,
      required this.subId,
      required this.classId,
      required this.year,
      required this.type});
  MarkStoreModel.fromJson(Map<String, dynamic> json) {
    student_id = json["student_id"];
    mark = json["mark"];
    subId = json["subject_id"];
    subId = json["class_id"];
    subId = json["year"];
    type = json["type"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["student_id"] = this.student_id;
    data["mark"] = this.mark;
    data["subject_id"] = this.subId;
    data["class_id"] = this.classId;
    data["year"] = this.year;
    data["type"] = this.type;
    return data;
  }
}*/


// To parse this JSON data, do
//
//     final studentMark = studentMarkFromJson(jsonString);

import 'dart:convert';

StudentMark studentMarkFromJson(String str) => StudentMark.fromJson(json.decode(str));

String studentMarkToJson(StudentMark data) => json.encode(data.toJson());

class StudentMark {
    StudentMark({
       required this.studentMark,
    });

    List<StudentMarkElement> studentMark;

    factory StudentMark.fromJson(Map<String, dynamic> json) => StudentMark(
        studentMark: List<StudentMarkElement>.from(json["student_mark"].map((x) => StudentMarkElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "student_mark": List<dynamic>.from(studentMark.map((x) => x.toJson())),
    };
}

class StudentMarkElement {
    StudentMarkElement({
      required  this.student_Id,
      required this.mark,
      required this.type,
      required this.classId,
      required this.subjectId,
      required  this.year,
    });

    int student_Id;
    dynamic mark;
    String type;
    int classId;
    int subjectId;
    dynamic year;

    factory StudentMarkElement.fromJson(Map<String, dynamic> json) => StudentMarkElement(
        student_Id: json["student_id"],
        mark: json["mark"],
        type: json["type"],
        classId: json["class_id"],
        subjectId: json["subject_id"],
        year: json["year"],
    );

    Map<String, dynamic> toJson() => {
        "student_id": student_Id,
        "mark": mark,
        "type": type,
        "class_id": classId,
        "subject_id": subjectId,
        "year": year,
    };
}

