import 'dart:convert';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:iquote/model/customer/createcustomerresponse.dart';
import 'package:iquote/model/customer/getcustomerresponemodel.dart';
import 'package:iquote/model/offers/getoffersresponse.dart';
import 'package:iquote/webservices/api_link/custom_api.dart';

class OffersController extends GetxController {
  WebService webService = WebService(dio: Dio(), connectivity: Connectivity());

  RxList<Offer> offerslist = <Offer>[].obs;
  RxBool offerShow = false.obs;
  getOffers() async {
    final response =
        await webService.getRequest(url: "${webService.baseUrl}/offers");
    response.fold(
      (l) {
        offerslist.clear();
        var cusrtomerdetails = getoffersresponseFromJson(l.toString());
        offerslist.addAll(cusrtomerdetails.offers?.toList() ?? []);
        offerShow.value = true;
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

  createOffers() async {
    Map<String, dynamic> params = {
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
        getOffers();
        Get.back();
      },
      (r) => print(r.message),
    );
  }

  deleteOffer({required String id}) async {
    final response = await webService.deleteRequest(
      url: "${webService.baseUrl}/offers_delete/$id",
    );
    response.fold(
      (l) {
        var cuistom = createcustomersresponseFromJson(l.toString());
        Fluttertoast.showToast(msg: cuistom.message.toString());
        log(l.toString());
        getOffers();
      },
      (r) => print(r.message),
    );
  }

  clearoffersfield() {
    bussinessname.clear();
    validity.clear();
    tc.clear();
    description.clear();
    cutomername.clear();
    companyname.clear();
    phone.clear();
    email.clear();
    category.clear();
  }
}
