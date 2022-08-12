// To parse this JSON data, do
//
//     final teachertable = teachertableFromJson(jsonString);

import 'dart:convert';

Teachertable teachertableFromJson(String str) => Teachertable.fromJson(json.decode(str));

String teachertableToJson(Teachertable data) => json.encode(data.toJson());

class Teachertable {
    Teachertable({
      required this.theWeak,
    });

    List<TheWeak> theWeak;

    factory Teachertable.fromJson(Map<String, dynamic> json) => Teachertable(
        theWeak: List<TheWeak>.from(json["the weak"].map((x) => TheWeak.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "the weak": List<dynamic>.from(theWeak.map((x) => x.toJson())),
    };
}

class TheWeak {
    TheWeak({
      required  this.day,
      required  this.time,
       required this.subjectId,
       required this.name,
    });

    String day;
    String time;
    String subjectId;
    String name;

    factory TheWeak.fromJson(Map<String, dynamic> json) => TheWeak(
        day: json["day"],
        time: json["time"],
        subjectId: json["subject_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "time": time,
        "subject_id": subjectId,
        "name": name,
    };
}
