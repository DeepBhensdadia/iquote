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
  int? businessId;
  int? customerId;
  String? title;
  String? description;
  DateTime? quatationDate;
  DateTime? validTillDate;
  dynamic quatationImage;
  dynamic quatationImages;
  String? amount;
  String? currencyCode;
  String? quatationStatus;
  int? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;

  Quatation({
    this.id,
    this.businessId,
    this.customerId,
    this.title,
    this.description,
    this.quatationDate,
    this.validTillDate,
    this.quatationImage,
    this.quatationImages,
    this.amount,
    this.currencyCode,
    this.quatationStatus,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory Quatation.fromJson(Map<String, dynamic> json) => Quatation(
    id: json["id"],
    businessId: json["business_id"],
    customerId: json["customer_id"],
    title: json["title"],
    description: json["description"],
    quatationDate: DateTime.parse(json["quatation_date"]),
    validTillDate: DateTime.parse(json["valid_till_date"]),
    quatationImage: json["quatation_image"],
    quatationImages: json["quatation_images"],
    amount: json["amount"],
    currencyCode: json["currency_code"],
    quatationStatus: json["quatation_status"],
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_id": businessId,
    "customer_id": customerId,
    "title": title,
    "description": description,
    "quatation_date": "${quatationDate?.year.toString().padLeft(4, '0')}-${quatationDate?.month.toString().padLeft(2, '0')}-${quatationDate?.day.toString().padLeft(2, '0')}",
    "valid_till_date": validTillDate?.toIso8601String(),
    "quatation_image": quatationImage,
    "quatation_images": quatationImages,
    "amount": amount,
    "currency_code": currencyCode,
    "quatation_status": quatationStatus,
    "is_active": isActive,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
