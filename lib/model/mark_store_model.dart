import 'dart:convert';

Marks studentsFromJson(String str) => Marks.fromJson(json.decode(str));

String studentsToJson(Marks data) => json.encode(data.toJson());

class Marks {
  
    Marks({
      required this.marks,
    });

    List<Marks> marks;

    factory Marks.fromJson(Map<String, dynamic> json) => Marks(
        marks: List<Marks>.from(json["student_id"].map((x) => Marks.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "students_id": List<dynamic>.from(marks.map((x) => x.toJson())),
    };
}





class MarkStoreModel {
  int? student_id;
  String? mark;
  MarkStoreModel({required this.student_id, required this.mark});
  MarkStoreModel.fromJson(Map<String, dynamic> json) {
    student_id = json["student_id"];
    mark = json["mark"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["student_id"] = this.student_id;
    data["mark"] = this.mark;
    return data;
  }
}
