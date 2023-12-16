// To parse this JSON data, do
//
//     final getoffersresponse = getoffersresponseFromJson(jsonString);

import 'dart:convert';

Getoffersresponse getoffersresponseFromJson(String str) =>
    Getoffersresponse.fromJson(json.decode(str));

String getoffersresponseToJson(Getoffersresponse data) =>
    json.encode(data.toJson());

class Getoffersresponse {
  List<Offer>? offers;

  Getoffersresponse({
    this.offers,
  });

  factory Getoffersresponse.fromJson(Map<String, dynamic> json) =>
      Getoffersresponse(
        offers: List<Offer>.from(json["offers"].map((x) => Offer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "offers": List<dynamic>.from(offers!.map((x) => x.toJson())),
      };
}

class Offer {
  int? id;
  String? companyName;
  String? customerName;
  int? mobileNumber;
  String? email;
  String? category;
  String? businessName;
  String? businessType;
  dynamic image;
  String? description;
  String? validity;
  String? tC;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Offer({
    this.id,
    this.companyName,
    this.customerName,
    this.mobileNumber,
    this.email,
    this.category,
    this.businessName,
    this.businessType,
    this.image,
    this.description,
    this.validity,
    this.tC,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        id: json["id"],
        companyName: json["company_name"],
        customerName: json["customer_name"],
        mobileNumber: json["mobile_number"],
        email: json["email"],
        category: json["category"],
        businessName: json["business_name"],
        businessType: json["business_type"],
        image: json["image"],
        description: json["description"],
        validity: json["validity"],
        tC: json["t_c"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "company_name": companyName,
        "customer_name": customerName,
        "mobile_number": mobileNumber,
        "email": email,
        "category": category,
        "business_name": businessName,
        "business_type": businessType,
        "image": image,
        "description": description,
        "validity": validity,
        "t_c": tC,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
