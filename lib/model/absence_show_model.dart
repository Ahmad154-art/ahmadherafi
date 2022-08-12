// To parse this JSON data, do
//
//     final absenceshow = absenceshowFromJson(jsonString);

import 'dart:convert';

Absenceshow absenceshowFromJson(String str) => Absenceshow.fromJson(json.decode(str));

String absenceshowToJson(Absenceshow data) => json.encode(data.toJson());

class Absenceshow {
    Absenceshow({
      required this.data,
    });

    List<Datum> data;

    factory Absenceshow.fromJson(Map<String, dynamic> json) => Absenceshow(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
     required   this.absencesId,
     required   this.firstName,
     required   this.lastName,
      required  this.type,
      required  this.reason,
    });

    int absencesId;
    String firstName;
    String lastName;
    String type;
    String reason;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        absencesId: json["absences_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        type: json["type"],
        reason: json["reason"],
    );

    Map<String, dynamic> toJson() => {
        "absences_id": absencesId,
        "first_name": firstName,
        "last_name": lastName,
        "type": type,
        "reason": reason,
    };
}
