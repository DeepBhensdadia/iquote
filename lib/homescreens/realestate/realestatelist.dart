import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:iquote/const.dart';
import 'package:iquote/getxcontrollers/bussinesscategorycontroller.dart';
import 'package:iquote/model/bussinessadvertiseresponse.dart';
import '../../helper.dart';

class RealEstateList extends StatefulWidget {
  const RealEstateList({super.key});

  @override
  State<RealEstateList> createState() => _RealEstateListState();
}

class _RealEstateListState extends State<RealEstateList> {

  BussinessCategoryController bussinessController =
  Get.put(BussinessCategoryController());

  @override
  void initState() {
    bussinessController.getBussinessAll(id: "3");
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Real Estate"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body:
    Obx(
    () => bussinessController.generalShow.isFalse
    ? Center(child: CircularProgressIndicator())
        :

    ListView.builder(
        itemCount: bussinessController.bussinesslist.length,
        itemBuilder: (context, index) {
          businessadvertised bussiness =
          bussinessController.bussinesslist[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
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
                      height: 130,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${bussiness.title}",
                                        style: textstyle(
                                            kblack, FontWeight.w600, 15),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "DN Houses Private Limited",
                                        style: textstyle(
                                            Colors.blue, FontWeight.w500, 10),
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
                              height: 5,
                            ),
                            Row(
                              children: [
                                rowtext(context,iconsdata: Icons.ac_unit_outlined, text1: "Possession Date", text2: bussiness.openDate),
                                rowtext(context,iconsdata: Icons.account_tree_outlined, text1: "Built Up Area", text2: "${bussiness.builtUpArea}"),
                                rowtext(context,iconsdata: Icons.account_box_outlined, text1: "Parking", text2: "${bussiness.parking}"),
                                rowtext(context,iconsdata: Icons.accessible, text1: "Furnishing", text2: "${bussiness.furnishing}"),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("${bussiness.description}",style: textstyle(kblack, FontWeight.w400, 12)),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 20,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${bussiness.value} | ₹${bussiness.areaSqFt}",style: textstyle(kblack, FontWeight.w400, 8)),
                                      Text("${bussiness.note}",style: textstyle(Colors.orangeAccent, FontWeight.w400, 8)),
                                    ],
                                  ),
                                  VerticalDivider(thickness: 1,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("100 people recently enquired",style: textstyle(kblack, FontWeight.w400, 8)),
                                      Text("posted 02 Days back",style: textstyle(kgrey, FontWeight.w400, 8)),
                                    ],
                                  ),
                                ],           
                              ),
                            ),
                            SizedBox(height: 5,),
                            Wrap(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.black54),
                                      borderRadius:
                                      BorderRadius.circular(5)),
                                  child: Text(
                                    maxLines: 2,
                                    // "+91 9328143230",
                                    "Chat",
                                    style: textstyle(Colors.black,
                                        FontWeight.w500, 12),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.black54),
                                      borderRadius:
                                      BorderRadius.circular(5)),
                                  child: Text(
                                    maxLines: 2,
                                    "Brochure",
                                    style: textstyle(Colors.black,
                                        FontWeight.w500, 12),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1,
                                          color: Colors.black54),
                                      borderRadius:
                                      BorderRadius.circular(5)),
                                  child: Text(
                                    maxLines: 2,
                                    "Contact Seller",
                                    style: textstyle(Colors.black,
                                        FontWeight.w500, 12),
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
      ),)
    ));
  }
}

Widget rowtext(context,{required IconData iconsdata,required String text1,required String text2}){
  return  Expanded(
    child: Row(
      children: [
        Icon(iconsdata,size: 12,),
        SizedBox(width: 2,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,style: textstyle(kgrey, FontWeight.w400, screenwidth(context,dividedby: 60))),
            Text(text2,style: textstyle(kblack, FontWeight.w400, screenwidth(context,dividedby: 55))),
          ],
        )
      ],
    ),
  );
}