import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iquote/homescreens/loans/postloanscreen.dart';
import 'package:iquote/model/bussinessadvertiseresponse.dart';
import '../../const.dart';
import '../../getxcontrollers/bussinesscategorycontroller.dart';
import '../../helper.dart';
import 'loansdetailspage.dart';

class LoanListingPage extends StatefulWidget {
  const LoanListingPage({super.key});

  @override
  State<LoanListingPage> createState() => _LoanListingPageState();
}

class _LoanListingPageState extends State<LoanListingPage> {

  BussinessCategoryController bussinessController =
  Get.put(BussinessCategoryController());
  @override
  void initState() {
    bussinessController.getBussinessAll(id: "2");
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text("Loans"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body:
      Obx(
            () => bussinessController.generalShow.isFalse
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
              itemCount: bussinessController.bussinesslist.length,
              itemBuilder: (context, index) {
                businessadvertised bussiness =
                bussinessController.bussinesslist[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Get.to( LoanDetailsPage(id : bussiness.id.toString()));
                    },
                    child: Container(
                      // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.5, color: kgrey),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topLeft: Radius.circular(8)),
                              border: Border.all(width: 1.5, color: kgrey),
                              color: kgrey,
                            ),
                            height: 126,
                            width: 100,
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              bussiness.title ?? '',
                                              style: textstyle(
                                                  kblack, FontWeight.w600, 16),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "${bussiness.companyName}",
                                              style:
                                              textstyle(Colors.blue, FontWeight.w500, 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Icon(
                                        Icons.bookmark_added,
                                        color: yellowcustomer,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Container(
                                    width: screenwidth(context,dividedby: 2),
                                    child: Text(
                                      maxLines: 2,
                                      bussiness.address ?? '',
                                      style: textstyle(kgrey, FontWeight.w500, 12),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Wrap(

spacing: 5,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            maxLines: 2,
                                            "Type : ",
                                            style: textstyle(
                                                Colors.black, FontWeight.w500, 10),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.5, color: Colors.black54),
                                                borderRadius:
                                                BorderRadius.circular(3)),
                                            child: Text(
                                              maxLines: 2,
                                              "${bussiness.businessAdvertisingType}",
                                              style: textstyle(
                                                  Colors.blue, FontWeight.w400, 10),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,

                                        children: [
                                          Text(
                                            maxLines: 2,
                                            " | Range: ",
                                            style: textstyle(
                                                Colors.black, FontWeight.w500, 10),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.5, color: Colors.black54),
                                                borderRadius:
                                                BorderRadius.circular(3)),
                                            child: Text(
                                              maxLines: 2,
                                              "${bussiness.description}",
                                              style: textstyle(
                                                  Colors.green, FontWeight.w400, 10),
                                            ),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
SizedBox(height: 8,),
                                  Wrap(

spacing: 5,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black54),
                                            borderRadius:
                                            BorderRadius.circular(3)),
                                        child: Text(
                                          maxLines: 2,
                                          "${bussiness.contactNumber}",
                                          style: textstyle(
                                              Colors.black, FontWeight.w500, 12),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black54),
                                            borderRadius:
                                            BorderRadius.circular(5)),
                                        child: Text(
                                          maxLines: 2,
                                          "Chat",
                                          style: textstyle(
                                              Colors.black, FontWeight.w500, 12),
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3, horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1, color: Colors.black54),
                                            borderRadius:
                                            BorderRadius.circular(5)),
                                        child: Text(
                                          maxLines: 2,
                                          "Brochure",
                                          style: textstyle(
                                              Colors.black, FontWeight.w500, 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
      ),


    );
  }
}
