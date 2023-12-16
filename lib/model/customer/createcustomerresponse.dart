// To parse this JSON data, do
//
//     final createcustomersresponse = createcustomersresponseFromJson(jsonString);

import 'dart:convert';

Createcustomersresponse createcustomersresponseFromJson(String str) =>
    Createcustomersresponse.fromJson(json.decode(str));

String createcustomersresponseToJson(Createcustomersresponse data) =>
    json.encode(data.toJson());

class Createcustomersresponse {
  String? message;
  int? customer;

  Createcustomersresponse({
    this.message,
    this.customer,
  });

  factory Createcustomersresponse.fromJson(Map<String, dynamic> json) =>
      Createcustomersresponse(
        message: json["message"] ?? "",
        customer: json["customer"] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "customer": customer,
      };
}
