// To parse this JSON data, do
//
//     final getbussinessresponse = getbussinessresponseFromJson(jsonString);

import 'dart:convert';

Getbussinessresponse getbussinessresponseFromJson(String str) => Getbussinessresponse.fromJson(json.decode(str));

String getbussinessresponseToJson(Getbussinessresponse data) => json.encode(data.toJson());

class Getbussinessresponse {
  List<businessadvertised>? data;

  Getbussinessresponse({
    this.data,
  });

  factory Getbussinessresponse.fromJson(Map<String, dynamic> json) => Getbussinessresponse(
    data: List<businessadvertised>.from(json["data"].map((x) => businessadvertised.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class businessadvertised {
  int? id;
  int? businessId;
  String? title;
  String? description;
  String? businessAdvertisingImage;
  String? businessEmail;
  String? contactNumber;
  String? address;
  String? businessAdvertisingType;
  DateTime? validityFrom;
  DateTime? validityTo;
  String? termsCondition;
  String? businessAdvertisingCode;
  String? businessAdvertisingCtaUrl;
  String? businessAdvertisingVideoUrl;
  dynamic businessAdvertisingDocument;
  int? isFeatured;
  int? isActive;
  int? advertisingCategoryId;
  int? advertisingTypeId;
  DateTime? createdAt;
  DateTime? updatedAt;

  businessadvertised({
    this.id,
    this.businessId,
    this.title,
    this.description,
    this.businessAdvertisingImage,
    this.businessEmail,
    this.contactNumber,
    this.address,
    this.businessAdvertisingType,
    this.validityFrom,
    this.validityTo,
    this.termsCondition,
    this.businessAdvertisingCode,
    this.businessAdvertisingCtaUrl,
    this.businessAdvertisingVideoUrl,
    this.businessAdvertisingDocument,
    this.isFeatured,
    this.isActive,
    this.advertisingCategoryId,
    this.advertisingTypeId,
    this.createdAt,
    this.updatedAt,
  });

  factory businessadvertised.fromJson(Map<String, dynamic> json) => businessadvertised(
    id: json["id"],
    businessId: json["business_id"],
    title: json["title"],
    description: json["description"],
    businessAdvertisingImage: json["business_advertising_image"],
    businessEmail: json["business_email"],
    contactNumber: json["contact_number"],
    address: json["address"],
    businessAdvertisingType: json["business_advertising_type"],
    validityFrom: DateTime.parse(json["validity_from"]),
    validityTo: DateTime.parse(json["validity_to"]),
    termsCondition: json["terms_condition"],
    businessAdvertisingCode: json["business_advertising_code"],
    businessAdvertisingCtaUrl: json["business_advertising_cta_url"],
    businessAdvertisingVideoUrl: json["business_advertising_video_url"],
    businessAdvertisingDocument: json["business_advertising_document"],
    isFeatured: json["is_featured"],
    isActive: json["is_active"],
    advertisingCategoryId: json["advertising_category_id"],
    advertisingTypeId: json["advertising_type_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_id": businessId,
    "title": title,
    "description": description,
    "business_advertising_image": businessAdvertisingImage,
    "business_email": businessEmail,
    "contact_number": contactNumber,
    "address": address,
    "business_advertising_type": businessAdvertisingType,
    "validity_from": validityFrom?.toIso8601String(),
    "validity_to": validityTo?.toIso8601String(),
    "terms_condition": termsCondition,
    "business_advertising_code": businessAdvertisingCode,
    "business_advertising_cta_url": businessAdvertisingCtaUrl,
    "business_advertising_video_url": businessAdvertisingVideoUrl,
    "business_advertising_document": businessAdvertisingDocument,
    "is_featured": isFeatured,
    "is_active": isActive,
    "advertising_category_id": advertisingCategoryId,
    "advertising_type_id": advertisingTypeId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
