import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iquote/model/customer/createcustomerresponse.dart';
import 'package:iquote/model/quatation/getquatationresponse.dart';
import 'package:iquote/webservices/api_link/custom_api.dart';

class QuatationController extends GetxController {
  WebService webService = WebService(dio: Dio(), connectivity: Connectivity());

  RxList<Quatation> quatationlist = <Quatation>[].obs;
  RxBool quatationlistShow = false.obs;
  getQuatation() async {
    final response =
        await webService.getRequest(url: "${webService.baseUrl}/quatation");
    response.fold(
      (l) {
        quatationlist.clear();
        var cusrtomerdetails = getquatationsresponseFromJson(l.toString());
        quatationlist.addAll(cusrtomerdetails.quatation?.toList() ?? []);
        quatationlistShow.value = true;
        // homedetail = getHomepageDataFromJson(l.toString());
        // Get.off(
        //       () => Home(),
        // );
        // update();
      },
      (r) => print(r.message),
    );
  }

  TextEditingController name = TextEditingController();
  TextEditingController bussinesstype = TextEditingController();
  TextEditingController bussinesscategory = TextEditingController();
  TextEditingController value = TextEditingController();
  TextEditingController descripation = TextEditingController();
  TextEditingController validity = TextEditingController();

  createQuatation() async {
    Map<String, dynamic> params = {
      "customer":name.text,
      "business_type": bussinesstype.text,
      "business_category": bussinesscategory.text,
      "value": value.text,
      "image": "",
      "description": descripation.text,
      "validity": validity.text,
      "customer_id": "1",
      "business_id": "1"
    };
    final response = await webService.postFormRequest(
        url: "${webService.baseUrl}/store_quatation",
        header: webService.headers,
        formData: jsonEncode(params));
    response.fold(
      (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getQuatation();
        Get.back();
      },
      (r) => print(r.message),
    );
  }



  deleteQuatation({required String id}) async {
    final response = await webService.deleteRequest(
      url: "${webService.baseUrl}/quatation_delete/$id",
    );
    response.fold(
          (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getQuatation();
      },
          (r) => print(r.message),
    );
  }
}
