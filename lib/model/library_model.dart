// To parse this JSON data, do
//
//     final library = libraryFromJson(jsonString);

import 'dart:convert';

Library libraryFromJson(String str) => Library.fromJson(json.decode(str));

String libraryToJson(Library data) => json.encode(data.toJson());

class Library {
    Library({
     required   this.stute,
      required  this.data,
    });

    bool stute;
    List<Datum> data;

    factory Library.fromJson(Map<String, dynamic> json) => Library(
        stute: json["stute"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "stute": stute,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
     required   this.name,
      required this.descreption,
    });

    String name;
    String descreption;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        descreption: json["information"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "information": descreption,
    };
}
