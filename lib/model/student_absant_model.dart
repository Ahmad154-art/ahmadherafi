// To parse this JSON data, do
//
//     final absant = absantFromJson(jsonString);

import 'dart:convert';

Absant absantFromJson(String str) => Absant.fromJson(json.decode(str));

String absantToJson(Absant data) => json.encode(data.toJson());

class Absant {
  Absant({
    required this.absant,
  });

  List<AbsantElement> absant;

  factory Absant.fromJson(Map<String, dynamic> json) => Absant(
        absant: List<AbsantElement>.from(
            json["absant"].map((x) => AbsantElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "absant": List<dynamic>.from(absant.map((x) => x.toJson())),
      };
}

class AbsantElement {
  AbsantElement({
    required this.type,
    required this.reason,
    required this.createdAt,
  });

  String type;
  String? reason;
  String? createdAt;

  factory AbsantElement.fromJson(Map<String, dynamic> json) => AbsantElement(
        type: json["type"],
        reason: json["reason"] == null ? null : json["reason"]!,
        createdAt: json["created_at"] ==null?null:json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "reason": reason,
        "created_at": createdAt,
      };
}
