
import 'dart:convert';

Getcatelogresponse getcatelogresponseFromJson(String str) =>
    Getcatelogresponse.fromJson(json.decode(str));

String getcatelogresponseToJson(Getcatelogresponse data) =>
    json.encode(data.toJson());

class Getcatelogresponse {
  List<Catalouge>? catalouge;

  Getcatelogresponse({
    this.catalouge,
  });

  factory Getcatelogresponse.fromJson(Map<String, dynamic> json) =>
      Getcatelogresponse(
        catalouge: List<Catalouge>.from(
            json["catalouge"].map((x) => Catalouge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "catalouge": List<dynamic>.from(catalouge!.map((x) => x.toJson())),
      };
}

class Catalouge {
  int? id;
  String? productName;
  int? businessId;
  int? customerId;
  int? productValue;
  String? brand;
  dynamic image;
  String? description;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Catalouge({
    this.id,
    this.productName,
    this.businessId,
    this.customerId,
    this.productValue,
    this.brand,
    this.image,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory Catalouge.fromJson(Map<String, dynamic> json) => Catalouge(
        id: json["id"],
        productName: json["product_name"],
        businessId: json["business_id"],
        customerId: json["customer_id"],
        productValue: json["product_value"],
        brand: json["brand"],
        image: json["image"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "business_id": businessId,
        "customer_id": customerId,
        "product_value": productValue,
        "brand": brand,
        "image": image,
        "description": description,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
