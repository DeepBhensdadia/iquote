import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iquote/model/bussinessadvertiseresponse.dart';
import 'package:iquote/model/customer/createcustomerresponse.dart';
import 'package:iquote/webservices/api_link/custom_api.dart';

class BussinessCategoryController extends GetxController{

  WebService webService = WebService(dio: Dio(), connectivity: Connectivity());

  RxList<businessadvertised> bussinesslist = <businessadvertised>[].obs;
  RxBool generalShow = false.obs;
  getBussinessAll({required String id}) async {
    generalShow.value = false;
    final response =
    await webService.getRequest(url: "${webService.baseUrl}/business_advertised/$id");
    response.fold(
          (l) {
            bussinesslist.clear();
        var cusrtomerdetails = getbussinessresponseFromJson(l.toString());
            bussinesslist.addAll(cusrtomerdetails.data?.toList() ?? []);
        generalShow.value = true;
      },
          (r) => print(r.message),
    );
  }

  TextEditingController cutomername = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController bussinessname = TextEditingController();
  TextEditingController validity = TextEditingController();
  TextEditingController tc = TextEditingController();
  TextEditingController description = TextEditingController();

  createOffers(String id) async {
    Map<String, dynamic> params = {
    "business_id": "2",
    "title": "test",
    "description": "description",
    "business_advertising_image": "",
    "business_email": "tesddddddti52ng@fgf.com",
    "contact_number": "1122222221",
    "business_advertising_type": "test",
    "validity_from": "2022-11-11 12:00:00",
    "validity_to": "2022-11-13 12:00:00",
    "terms_condition": "terms_condition",
    "business_advertising_code": "1",
    "business_advertising_cta_url": "",
    "business_advertising_video_url": "www.xyzaaaa.com",
    "business_advertising_document": "",
    "is_featured": "1",
    "is_active": "1",
    "advertising_category_id": "2",
    "advertising_type_id": "1",

      "company_name": companyname.text,
      "customer_name": cutomername.text,
      "mobile_number": phone.text,
      "email": email.text,
      "category": category.text,
      "business_name": bussinessname.text,
      "business_type": "xyz",
      "image": "",
      "description": description.text,
      "validity": validity.text,
      "t_c": tc.text
    };
    final response = await webService.postFormRequest(
        url: "${webService.baseUrl}/store_offers",
        header: webService.headers,
        formData: jsonEncode(params));
    response.fold(
          (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getBussinessAll(id: id);
        Get.back();
      },
          (r) => print(r.message),
    );
  }


}