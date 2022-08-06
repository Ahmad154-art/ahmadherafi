// To parse this JSON data, do
//
//     final secusess = secusessFromJson(jsonString);

import 'dart:convert';

Secusess secusessFromJson(String str) => Secusess.fromJson(json.decode(str));

String secusessToJson(Secusess data) => json.encode(data.toJson());

class Secusess {
    Secusess({
      required  this.status,
      required this.secusess,
    });

    bool status;
    List<SecusessElement> secusess;

    factory Secusess.fromJson(Map<String, dynamic> json) => Secusess(
        status: json["status"],
        secusess: List<SecusessElement>.from(json["secusess"].map((x) => SecusessElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "secusess": List<dynamic>.from(secusess.map((x) => x.toJson())),
    };
}

class SecusessElement {
    SecusessElement({
      required this.type,
      required this.markAverage,
    });

    String type;
    double markAverage;

    factory SecusessElement.fromJson(Map<String, dynamic> json) => SecusessElement(
        type: json["type"],
        markAverage: json["MarkAverage"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "MarkAverage": markAverage,
    };
}
