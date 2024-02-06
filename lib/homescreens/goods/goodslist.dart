import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iquote/const.dart';
import 'package:iquote/getxcontrollers/bussinesscategorycontroller.dart';
import 'package:iquote/model/bussinessadvertiseresponse.dart';

class GoodsList extends StatefulWidget {
  const GoodsList({super.key});

  @override
  State<GoodsList> createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  BussinessCategoryController bussinessController =
      Get.put(BussinessCategoryController());

  @override
  void initState() {
    bussinessController.getBussinessAll(id: "4");
    // TODO: implement initState
    super.initState();
  }

  List<String> work = ["Facial", "Bridal Makeup", "Pedicure"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Goods"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: Obx(
          () => bussinessController.generalShow.isFalse
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    businessadvertised bussiness =
                    bussinessController.bussinesslist[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          // Get.to(const OfferDetailsPage());
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
                              Expanded(
                                flex: 1,
                                child: Container(
                                  // height: 120,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/noun-auction-3194931 1.png")),
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        topLeft: Radius.circular(8)),
                                    border:
                                        Border.all(width: 1.5, color: kgrey),
                                    color: kgrey,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                  "${bussiness.title}",
                                                  style: textstyle(kblack,
                                                      FontWeight.w600, 14),
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                Wrap(

                                                  children: [
                                                    Text(
                                                      "${bussiness.companyName}",
                                                      style: textstyle(
                                                          const Color(0xff0058A2),
                                                          FontWeight.w500,
                                                          10),
                                                    ),
                                                    const SizedBox(
                                                      width: 3,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          maxLines: 2,
                                                          "4.9",
                                                          style: textstyle(
                                                              Colors.black,
                                                              FontWeight.w500,
                                                              10),
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Row(
                                                            children:
                                                                List.generate(
                                                          5,
                                                          (index) => const Icon(
                                                            Icons.star,
                                                            size: 12,
                                                            color:
                                                                Colors.orange,
                                                          ),
                                                        ).toList()),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                        Text(
                                                          maxLines: 2,
                                                          "103 Review",
                                                          style: textstyle(
                                                              Colors.black,
                                                              FontWeight.w400,
                                                              10),
                                                        ),
                                                        const SizedBox(
                                                          width: 3,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 3,
                                                ),
                                                Text(
                                                  maxLines: 2,
                                                  // "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",

                                               "${bussiness.address}",
                                                  style: textstyle(kgrey,
                                                      FontWeight.w500, 10),
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
                                          Text(
                                            maxLines: 2,
                                            "Price: ${bussiness.value}",

                                            // "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                                            style: textstyle(
                                                kgrey, FontWeight.w500, 10),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            maxLines: 2,
                                            "Minimum order quantity: ${bussiness.description}",

                                            // "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                                            style: textstyle(
                                                kgrey, FontWeight.w500, 8),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Wrap(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
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
                                              "${bussiness.contactNumber}",
                                              style: textstyle(Colors.black,
                                                  FontWeight.w500, 12),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 8),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.black54),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              maxLines: 2,
                                              "Chat",
                                              style: textstyle(Colors.black,
                                                  FontWeight.w500, 12),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 8),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.black54),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Text(
                                              maxLines: 2,
                                              "Whatsapp",
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
                ),
        ));
  }
}
