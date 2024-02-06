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
  dynamic openDate;
  String? title;
  String? description;
  dynamic businessAdvertisingImage;
  dynamic businessEmail;
  String? contactNumber;
  String? address;
  String? businessAdvertisingType;
   DateTime? validityFrom;
   DateTime? validityTo;
  String? termsCondition;
  dynamic businessAdvertisingCode;
  String? businessAdvertisingCtaUrl;
  dynamic businessAdvertisingVideoUrl;
  dynamic businessAdvertisingDocument;
  dynamic experiance;
  dynamic value;
  dynamic skill;
  dynamic builtUpArea;
  dynamic areaSqFt;
  dynamic parking;
  dynamic furnishing;
  dynamic note;
  dynamic openingPosition;
  dynamic application;
  String? details;
  int? isFeatured;
  int? isActive;
  dynamic advertisingCategoryId;
  int? advertisingTypeId;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? companyName;

  businessadvertised({
    this.id,
    this.businessId,
    this.openDate,
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
    this.experiance,
    this.value,
    this.skill,
    this.builtUpArea,
    this.areaSqFt,
    this.parking,
    this.furnishing,
    this.note,
    this.openingPosition,
    this.application,
    this.details,
    this.isFeatured,
    this.isActive,
    this.advertisingCategoryId,
    this.advertisingTypeId,
    this.createdAt,
    this.updatedAt,
    this.companyName,
  });

  factory businessadvertised.fromJson(Map<String, dynamic> json) => businessadvertised(
    id: json["id"],
    businessId: json["business_id"],
    openDate: json["open_date"],
    title: json["title"],
    description: json["description"],
    businessAdvertisingImage: json["business_advertising_image"],
    businessEmail: json["business_email"],
    contactNumber: json["contact_number"],
    address: json["address"],
    businessAdvertisingType: json["business_advertising_type"],
    validityFrom: json["validity_from"] != null ? DateTime.parse(json["validity_from"]) : DateTime.now(),
    validityTo:   json["validity_to"] != null ? DateTime.parse(json["validity_to"]) : DateTime.now(),
    termsCondition: json["terms_condition"],
    businessAdvertisingCode: json["business_advertising_code"],
    businessAdvertisingCtaUrl: json["business_advertising_cta_url"],
    businessAdvertisingVideoUrl: json["business_advertising_video_url"],
    businessAdvertisingDocument: json["business_advertising_document"],
    experiance: json["experiance"],
    value: json["value"],
    skill: json["skill"],
    builtUpArea: json["built_up_area"],
    areaSqFt: json["area_sq_ft"],
    parking: json["parking"],
    furnishing: json["furnishing"],
    note: json["note"],
    openingPosition: json["opening_position"],
    application: json["application"],
    details: json["details"],
    isFeatured: json["is_featured"],
    isActive: json["is_active"],
    advertisingCategoryId: json["advertising_category_id"],
    advertisingTypeId: json["advertising_type_id"],
    createdAt:json["created_at"] != null ? DateTime.parse(json["created_at"]) : DateTime.now(),
    updatedAt:json["updated_at"] != null ? DateTime.parse(json["updated_at"]) : DateTime.now(),
    companyName: json["company_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_id": businessId,
    "open_date": openDate,
    "title": title,
    "description": description,
    "business_advertising_image": businessAdvertisingImage,
    "business_email": businessEmail,
    "contact_number": contactNumber,
    "address": address,
    "business_advertising_type": businessAdvertisingType,
    "validity_from": validityFrom,
    "validity_to": validityTo,
    "terms_condition": termsCondition,
    "business_advertising_code": businessAdvertisingCode,
    "business_advertising_cta_url": businessAdvertisingCtaUrl,
    "business_advertising_video_url": businessAdvertisingVideoUrl,
    "business_advertising_document": businessAdvertisingDocument,
    "experiance": experiance,
    "value": value,
    "skill": skill,
    "built_up_area": builtUpArea,
    "area_sq_ft": areaSqFt,
    "parking": parking,
    "furnishing": furnishing,
    "note": note,
    "opening_position": openingPosition,
    "application": application,
    "details": details,
    "is_featured": isFeatured,
    "is_active": isActive,
    "advertising_category_id": advertisingCategoryId,
    "advertising_type_id": advertisingTypeId,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "company_name": companyName,
  };
}
