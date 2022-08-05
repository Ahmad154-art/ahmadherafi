// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    required this.body,
    required this.data,
  });

  int body;
  List<Datum> data;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        body: json["body"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "body": body,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.absencesId,
    required this.firstName,
    required this.lastName,
    required this.type,
    required this.reason,
  });
  int? id;
  int? absencesId;
  String firstName;
  String lastName;
  String? type;
  String? reason;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id:  json["id"], //== null ? null : json["id"],
        absencesId: json["absences_id"] ,//== null ? null : json["absences_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        type: json["type"],//== null ? null : json["type"],
        reason: json["reason"],// == null ? null : json["reason"],
      );

  Map<String, dynamic> toJson() => {
        "id":id,//== null ? null : id,
        "absences_id": absencesId,//== null ? null : absencesId,
        "first_name": firstName,
        "last_name": lastName,
        "type": type,//== null ? null : type,
        "reason": reason,// == null ? null : reason,
      };
}
