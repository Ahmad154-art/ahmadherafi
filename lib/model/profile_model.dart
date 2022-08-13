// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    Profile({
    required   this.status,
    required    this.message,
    required    this.data,
    });

    bool status;
    String message;
    List<Datum> data;

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
     required   this.firstName,
     required   this.lastName,
     required   this.email,
      required  this.number,
      required  this.image,
      required  this.experince,
      required  this.salary,
      required  this.father,
     required   this.mother,
     required   this.name,
    });

    String firstName;
    String lastName;
    String email;
    dynamic number;
    dynamic image;
    String? experince;
    int? salary;
    String? father;
    String? mother;
    String? name;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        number: json["number"],
        image: json["img_url"]==null?null:json["img_url"]!,
        experince: json["experince"] ==null?null:json["experince"]!,
        salary: json["salary"]==null?null:json["salary"]!,
        father: json["father"]==null?null:json["father"]!,
        mother: json["mother"]==null?null:json["mother"]!,
        name: json["name"]==null?null:json["name"]!,
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "number": number,
        "img_url": image,
        "experince": experince,
        "salary": salary,
        "father": father,
        "mother": mother,
        "name": name,
    };
}
