// To parse this JSON data, do
//
//     final details = detailsFromJson(jsonString);

import 'dart:convert';

Details detailsFromJson(String str) => Details.fromJson(json.decode(str));

String detailsToJson(Details data) => json.encode(data.toJson());

class Details {
    Details({
    required    this.details,
    });

    List<DetailsElement> details;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        details: List<DetailsElement>.from(json["details "].map((x) => DetailsElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "details ": List<dynamic>.from(details.map((x) => x.toJson())),
    };
}

class DetailsElement {
    DetailsElement({
      required  this.id,
     required   this.classId,
     required   this.subjectId,
     required   this.numberPage,
     required   this.descreption,
      required  this.createdAt,
      required  this.updatedAt,
      required  this.subjectname,
      required  this.classname,
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

    factory DetailsElement.fromJson(Map<String, dynamic> json) => DetailsElement(
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
