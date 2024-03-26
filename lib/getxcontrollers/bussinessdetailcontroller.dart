// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
//
// import '../model/getbussinessdetailsresponse.dart';
// import '../webservices/api_link/custom_api.dart';
//
// class BussinessDetailsController extends GetxController {
//
//   WebService webService = WebService(dio: Dio(), connectivity: Connectivity());
//
//   Getbussinessdetailsresponse bussinessdetails = Getbussinessdetailsresponse();
//   bool detailsshow = false;
//   getBussinessdetails({required String id}) async {
//     final response = await webService.getRequest(
//         url: "${webService.baseUrl}/advertising_detail/$id");
//     response.fold(
//           (l) {
//         // bussinesslist.clear();
//         var cusrtomerdetails =
//         getbussinessdetailsresponseFromJson(l.toString());
//         bussinessdetails = cusrtomerdetails;
//         detailsshow = true;
//         update();
//       },
//           (r) => print(r.message),
//     );
//   }
// }