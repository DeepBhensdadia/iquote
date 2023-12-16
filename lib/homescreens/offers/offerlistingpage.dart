import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/offerscontroller.dart';
import 'package:iquote/helper.dart';
import 'package:iquote/model/offers/getoffersresponse.dart';

import '../../const.dart';
import 'offerdetailspage.dart';
import 'offersaddscreen.dart';

class OfferListingPage extends StatefulWidget {
  const OfferListingPage({super.key});

  @override
  State<OfferListingPage> createState() => _OfferListingPageState();
}

class _OfferListingPageState extends State<OfferListingPage> {
  OffersController offersController = Get.put(OffersController());
  @override
  void initState() {
    // offersController.getOffers();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const OffersAddScreen());
          },
          backgroundColor: custom,
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text("Offers"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body:
          // Obx(
          //   () => offersController.offerShow.isFalse
          //       ? Center(child: CircularProgressIndicator())
          //       :
          ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          // Offer offer = offersController.offerslist[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slidable(
              endActionPane: ActionPane(
                  extentRatio: screenwidth(context, dividedby: 800),
                  motion: ScrollMotion(),
                  children: [
                    SlidableAction(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10)),
                      autoClose: true,
                      onPressed: (context) {},
                      backgroundColor: const Color(0xFF2C4475),
                      foregroundColor: Colors.white,

                      // icon: Icons.archive,
                      label: 'Edit'.tr,
                    ),
                    SlidableAction(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      autoClose: true,
                      onPressed: (context) {
                        // offersController.deleteOffer(id: offer.id.toString());
                      },
                      backgroundColor: const Color(0xFFEB4359),
                      foregroundColor: Colors.white,
                      // icon: Icons.save,
                      label: 'Delete'.tr,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: InkWell(
                  onTap: () {
                    Get.to(const OfferDetailsPage());
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
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/noun-auction-3194931 1.png")),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topLeft: Radius.circular(8)),
                              border: Border.all(width: 1.5, color: kgrey),
                              color: kgrey,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Offer On Dinner Buffet at KFC",
                                            style: textstyle(
                                                kblack, FontWeight.w600, 14),
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                maxLines: 2,
                                                "4.9",
                                                style: textstyle(Colors.black,
                                                    FontWeight.w500, 12),
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Row(
                                                  children: List.generate(
                                                5,
                                                (index) => Icon(
                                                  Icons.star,
                                                  size: 15,
                                                  color: Colors.orange,
                                                ),
                                              ).toList()),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                maxLines: 2,
                                                "103 Review",
                                                style: textstyle(Colors.black,
                                                    FontWeight.w400, 12),
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                maxLines: 2,
                                                "Hotel Crown",
                                                style: textstyle(Colors.blue,
                                                    FontWeight.w500, 12),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 3, horizontal: 5),
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                                child: Text(
                                                  maxLines: 2,
                                                  "Verified",
                                                  style: textstyle(Colors.white,
                                                      FontWeight.w500, 10),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            maxLines: 2,
                                            "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                                            style: textstyle(
                                                kgrey, FontWeight.w500, 12),
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
                                Text(
                                  maxLines: 2,
                                  "Offer expires on 05, Nov 2023",
                                  style: textstyle(kgrey, FontWeight.w600, 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
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
                                        "+91 9328143230",
                                        style: textstyle(
                                            Colors.black, FontWeight.w500, 12),
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
                                    SizedBox(
                                      width: 5,
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
                                        "Whatsapp",
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
              ),
            ),
          );
        },
      ),
      // ),
    );
  }
}
