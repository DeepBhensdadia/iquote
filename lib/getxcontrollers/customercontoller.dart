import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iquote/model/customer/createcustomerresponse.dart';
import 'package:iquote/model/customer/getcustomerresponemodel.dart';
import 'package:iquote/webservices/api_link/custom_api.dart';

class CustomerController extends GetxController {
  WebService webService = WebService(dio: Dio(), connectivity: Connectivity());

  RxList<Customer> customerlist = <Customer>[].obs;
  RxBool customerShow = false.obs;
  getCustomer() async {
    final response =
        await webService.getRequest(url: "${webService.baseUrl}/customer");
    response.fold(
      (l) {
        customerlist.clear();
        var cusrtomerdetails = getcustomersresponseFromJson(l.toString());
        customerlist.addAll(cusrtomerdetails.customer?.toList() ?? []);
        customerShow.value = true;
        // homedetail = getHomepageDataFromJson(l.toString());
        // Get.off(
        //       () => Home(),
        // );
        // update();
      },
      (r) => print(r.message),
    );
  }

  TextEditingController cutomername = TextEditingController();
  TextEditingController cutomerphone = TextEditingController();
  TextEditingController cutomeremail = TextEditingController();
  TextEditingController cutomeradress = TextEditingController();
  TextEditingController cutomerremark = TextEditingController();

  createCustomer() async {
    Map<String, dynamic> params = {
      "business_id": "2",
      "phone": cutomerphone.text,
      "customer_name": cutomername.text,
      "email": cutomeremail.text,
      "address": cutomeradress.text,
      "remark": cutomerremark.text
    };
    final response = await webService.postFormRequest(
        url: "${webService.baseUrl}/store_customer",
        header: webService.headers,
        formData: jsonEncode(params));
    response.fold(
      (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getCustomer();
        Get.back();
      },
      (r) => print(r.message),
    );
  }

  deleteCustomer({required String id}) async {
    final response = await webService.deleteRequest(
      url: "${webService.baseUrl}/customer_delete/$id",
    );
    response.fold(
          (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getCustomer();
      },
          (r) => print(r.message),
    );
  }

  clearcustomerfield() {
    cutomername.clear();
    cutomerphone.clear();
    cutomeremail.clear();
    cutomeradress.clear();
    cutomerremark.clear();
  }
}
