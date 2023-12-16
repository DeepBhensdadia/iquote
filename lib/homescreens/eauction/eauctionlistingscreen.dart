import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const.dart';
import 'eauctionaddscreen.dart';
import 'eauctiondetailspage.dart';

class EAuctionListingPage extends StatefulWidget {
  const EAuctionListingPage({super.key});

  @override
  State<EAuctionListingPage> createState() => _EAuctionListingPageState();
}

class _EAuctionListingPageState extends State<EAuctionListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const EAuctionAddScreen());
          },
          backgroundColor: custom,
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text("E-Auction"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
             onTap: () {
               Get.to(const EAuctionDetailsPage());
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
                      height: 120,
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
                                        "E - Auction of Land & Manufacturing Pl",
                                        style: textstyle(
                                            kblack, FontWeight.w600, 16),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        maxLines: 2,
                                        "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar, Odisha 751003, India",
                                        style:
                                        textstyle(kgrey, FontWeight.w500, 12),
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
                              "Price : 12,12345",
                              style:
                              textstyle(kgrey, FontWeight.w600, 10),
                            ),

                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                                    SizedBox(width: 5,),
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
                                    ), SizedBox(width: 5,),
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
                                        "Bid Now",
                                        style: textstyle(
                                            Colors.black, FontWeight.w500, 12),
                                      ),
                                    ),
                                  ],
                                ),
                                // Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //
                                //     Text(
                                //       maxLines: 2,
                                //       "Type - Commercial",
                                //       style:
                                //       textstyle(kgrey, FontWeight.w600, 10),
                                //     ),
                                //
                                //     Text(
                                //       maxLines: 2,
                                //       "Posted on 21 August 2023 at 11:AM",
                                //       style:
                                //       textstyle(kgrey, FontWeight.w600, 10),
                                //     ),
                                //
                                //     Text(
                                //       maxLines: 2,
                                //       "Auction ID - #73894",
                                //       style:
                                //       textstyle(kgrey, FontWeight.w600, 10),
                                //     ),
                                //
                                //   ],
                                // ),
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
    );
  }
}
