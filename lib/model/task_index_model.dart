// To parse this JSON data, do
//
//     final percent = percentFromJson(jsonString);

import 'dart:convert';

Percent percentFromJson(String str) => Percent.fromJson(json.decode(str));

String percentToJson(Percent data) => json.encode(data.toJson());

class Percent {
    Percent({
      required  this.status,
      required this.theDataIs,
    });

    bool status;
    List<TheDataIs> theDataIs;

    factory Percent.fromJson(Map<String, dynamic> json) => Percent(
        status: json["status"],
        theDataIs: List<TheDataIs>.from(json["the data is "].map((x) => TheDataIs.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "the data is ": List<dynamic>.from(theDataIs.map((x) => x.toJson())),
    };
}

class TheDataIs {
    TheDataIs({
    required    this.id,
   required     this.classId,
    required   this.subjectId,
    required   this.numberPage,
     required   this.descreption,
    required   this.createdAt,
    required    this.updatedAt,
    required    this.subjectname,
      required this.classname,
    });

    int id;
    int classId;
    int subjectId;
    int numberPage;
    String descreption;
    String createdAt;
    String updatedAt;
    String subjectname;
    String classname;

    factory TheDataIs.fromJson(Map<String, dynamic> json) => TheDataIs(
        id: json["id"],
        classId: json["class_id"],
        subjectId: json["subject_id"],
        numberPage: json["number_page"],
        descreption: json["descreption"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        subjectname: json["subjectname"],
        classname: json["classname"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "class_id": classId,
        "subject_id": subjectId,
        "number_page": numberPage,
        "descreption": descreption,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "subjectname": subjectname,
        "classname": classname,
    };
}
