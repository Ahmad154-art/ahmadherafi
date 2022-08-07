// To parse this JSON data, do
//
//     final percent = percentFromJson(jsonString);

import 'dart:convert';

Percent percentFromJson(String str) => Percent.fromJson(json.decode(str));

String percentToJson(Percent data) => json.encode(data.toJson());

class Percent {
    Percent({
      required  this.status,
       required this.presence,
      required this.absence,
    });

    bool status;
    int presence;
    int absence;

    factory Percent.fromJson(Map<String, dynamic> json) => Percent(
        status: json["status"],
        presence: json["Presence"],
        absence: json["Absence"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "Presence": presence,
        "Absence": absence,
    };
}
