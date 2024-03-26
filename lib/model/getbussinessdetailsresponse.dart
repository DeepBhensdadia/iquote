// To parse this JSON data, do
//
//     final getbussinessdetailsresponse = getbussinessdetailsresponseFromJson(jsonString);

import 'dart:convert';

Getbussinessdetailsresponse getbussinessdetailsresponseFromJson(String str) => Getbussinessdetailsresponse.fromJson(json.decode(str));

String getbussinessdetailsresponseToJson(Getbussinessdetailsresponse data) => json.encode(data.toJson());

class Getbussinessdetailsresponse {
  BusinessAdvertise? businessAdvertise;
  List<BusinessAdvertiseDetail>? businessAdvertiseDetails;

  Getbussinessdetailsresponse({
    this.businessAdvertise,
    this.businessAdvertiseDetails,
  });

  factory Getbussinessdetailsresponse.fromJson(Map<String, dynamic> json) => Getbussinessdetailsresponse(
    businessAdvertise: BusinessAdvertise.fromJson(json["business_advertise"]),
    businessAdvertiseDetails: List<BusinessAdvertiseDetail>.from(json["business_advertise_details"].map((x) => BusinessAdvertiseDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "business_advertise": businessAdvertise!.toJson(),
    "business_advertise_details": List<dynamic>.from(businessAdvertiseDetails!.map((x) => x.toJson())),
  };
}

class BusinessAdvertise {
  String? businessName;
  String? title;
  String? description;
  DateTime? validityTo;
  String? businessAdvertisingImage;
  String? address;
  String? termsCondition;
  String? value;
  String? contactNumber;
  String? businessAdvertisingCtaUrl;

  BusinessAdvertise({
    this.businessName,
    this.title,
    this.description,
    this.validityTo,
    this.businessAdvertisingImage,
    this.address,
    this.termsCondition,
    this.value,
    this.contactNumber,
    this.businessAdvertisingCtaUrl,
  });

  factory BusinessAdvertise.fromJson(Map<String, dynamic> json) => BusinessAdvertise(
    businessName: json["business_name"] ?? "",
    title: json["title"] ?? "",
    description: json["description"] ?? "",
    validityTo: json["validity_to"] != null ? DateTime.parse(json["validity_to"]): DateTime.now(),
    businessAdvertisingImage: json["business_advertising_image"] ?? "",
    address: json["address"] ?? "",
    termsCondition: json["terms_condition"] ?? "",
    value: json["value"] ?? "",
    contactNumber: json["contact_number"] ?? "",
    businessAdvertisingCtaUrl: json["business_advertising_cta_url"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "business_name": businessName,
    "title": title,
    "description": description,
    "validity_to": validityTo?.toIso8601String(),
    "business_advertising_image": businessAdvertisingImage,
    "address": address,
    "terms_condition": termsCondition,
    "value": value,
    "contact_number": contactNumber,
    "business_advertising_cta_url": businessAdvertisingCtaUrl,
  };
}

class BusinessAdvertiseDetail {
  String? rating;
  String? distance;
  String? advertiseIds;
  String? details;

  BusinessAdvertiseDetail({
    this.rating,
    this.distance,
    this.advertiseIds,
    this.details,
  });

  factory BusinessAdvertiseDetail.fromJson(Map<String, dynamic> json) => BusinessAdvertiseDetail(
    rating: json["rating"],
    distance: json["distance"],
    advertiseIds: json["advertise_ids"],
    details: json["details"],
  );

  Map<String, dynamic> toJson() => {
    "rating": rating,
    "distance": distance,
    "advertise_ids": advertiseIds,
    "details": details,
  };
}
