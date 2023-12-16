// To parse this JSON data, do
//
//     final getquatationsresponse = getquatationsresponseFromJson(jsonString);

import 'dart:convert';

Getquatationsresponse getquatationsresponseFromJson(String str) => Getquatationsresponse.fromJson(json.decode(str));

String getquatationsresponseToJson(Getquatationsresponse data) => json.encode(data.toJson());

class Getquatationsresponse {
  List<Quatation>? quatation;

  Getquatationsresponse({
    this.quatation,
  });

  factory Getquatationsresponse.fromJson(Map<String, dynamic> json) => Getquatationsresponse(
    quatation: List<Quatation>.from(json["quatation"].map((x) => Quatation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "quatation": List<dynamic>.from(quatation!.map((x) => x.toJson())),
  };
}

class Quatation {
  int? id;
  String? customer;
  String? businessType;
  String? businessCategory;
  int? value;
  dynamic image;
  String? description;
  String? validity;
  int? customerId;
  int? businessId;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Quatation({
    this.id,
    this.customer,
    this.businessType,
    this.businessCategory,
    this.value,
    this.image,
    this.description,
    this.validity,
    this.customerId,
    this.businessId,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Quatation.fromJson(Map<String, dynamic> json) => Quatation(
    id: json["id"],
    customer: json["customer"],
    businessType: json["business_type"],
    businessCategory: json["business_category"],
    value: json["value"],
    image: json["image"],
    description: json["description"],
    validity: json["validity"],
    customerId: json["customer_id"],
    businessId: json["business_id"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer": customer,
    "business_type": businessType,
    "business_category": businessCategory,
    "value": value,
    "image": image,
    "description": description,
    "validity": validity,
    "customer_id": customerId,
    "business_id": businessId,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
