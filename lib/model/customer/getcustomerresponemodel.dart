// To parse this JSON data, do
//
//     final getcustomersresponse = getcustomersresponseFromJson(jsonString);

import 'dart:convert';

Getcustomersresponse getcustomersresponseFromJson(String str) => Getcustomersresponse.fromJson(json.decode(str));

String getcustomersresponseToJson(Getcustomersresponse data) => json.encode(data.toJson());

class Getcustomersresponse {
  List<Customer>? customer;

  Getcustomersresponse({
    this.customer,
  });

  factory Getcustomersresponse.fromJson(Map<String, dynamic> json) => Getcustomersresponse(
    customer: List<Customer>.from(json["customer"].map((x) => Customer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "customer": List<dynamic>.from(customer!.map((x) => x.toJson())),
  };
}

class Customer {
  int? id;
  String? businessId;
  String? phone;
  String? customerName;
  String? email;
  String? address;
  String? remark;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Customer({
    this.id,
    this.businessId,
    this.phone,
    this.customerName,
    this.email,
    this.address,
    this.remark,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    id: json["id"],
    businessId: json["business_id"],
    phone: json["phone"],
    customerName: json["customer_name"],
    email: json["email"],
    address: json["address"],
    remark: json["remark"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_id": businessId,
    "phone": phone,
    "customer_name": customerName,
    "email": email,
    "address": address,
    "remark": remark,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
