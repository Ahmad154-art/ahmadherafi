// To parse this JSON data, do
//
//     final installment = installmentFromJson(jsonString);

import 'dart:convert';

Installment installmentFromJson(String str) => Installment.fromJson(json.decode(str));

String installmentToJson(Installment data) => json.encode(data.toJson());

class Installment {
    Installment({
      required this.installment,
    });

    List<InstallmentElement> installment;

    factory Installment.fromJson(Map<String, dynamic> json) => Installment(
        installment: List<InstallmentElement>.from(json["installment"].map((x) => InstallmentElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "installment": List<dynamic>.from(installment.map((x) => x.toJson())),
    };
}

class InstallmentElement {
    InstallmentElement({
      required this.amount,
      required this.paid,
      required this.theReset,
      required  this.createdAt,
    });

    int amount;
    int paid;
    int theReset;
    DateTime createdAt;

    factory InstallmentElement.fromJson(Map<String, dynamic> json) => InstallmentElement(
        amount: json["amount"],
        paid: json["paid"],
        theReset: json["the_reset"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "paid": paid,
        "the_reset": theReset,
        "created_at": createdAt.toIso8601String(),
    };
}
