import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iquote/model/catelog/getcatelogresponse.dart';
import 'package:iquote/model/customer/createcustomerresponse.dart';
import 'package:iquote/model/customer/getcustomerresponemodel.dart';
import 'package:iquote/webservices/api_link/custom_api.dart';

class CatalogController extends GetxController {
  WebService webService = WebService(dio: Dio(), connectivity: Connectivity());

  RxList<Catalouge> cataloglist = <Catalouge>[].obs;
  RxBool catalogShow = false.obs;
  getCatalog() async {
    final response =
        await webService.getRequest(url: "${webService.baseUrl}/catalouge");
    response.fold(
      (l) {
        cataloglist.clear();
        var cusrtomerdetails = getcatelogresponseFromJson(l.toString());
        cataloglist.addAll(cusrtomerdetails.catalouge?.toList() ?? []);
        catalogShow.value = true;
      },
      (r) => print(r.message),
    );
  }

  TextEditingController productname = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController brand = TextEditingController();
  TextEditingController discription = TextEditingController();

  createCatelogue() async {
    Map<String, dynamic> params = {
      "product_name": productname.text,
      "business_id": "1",
      "customer_id": "2",
      "product_value": value.text,
      "brand": brand.text,
      "image": "",
      "description": discription.text
    };
    final response = await webService.postFormRequest(
        url: "${webService.baseUrl}/store_catalouge",
        header: webService.headers,
        formData: jsonEncode(params));
    response.fold(
      (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getCatalog();
        Get.back();
      },
      (r) => print(r.message),
    );
  }


  deleteCatelogue({required String id}) async {
    final response = await webService.deleteRequest(
      url: "${webService.baseUrl}/catalouge_delete/$id",
    );
    response.fold(
          (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getCatalog();
      },
          (r) => print(r.message),
    );
  }

  clearcustomerfield() {
    productname.clear();
    value.clear();
    brand.clear();
    discription.clear();
  }
}
