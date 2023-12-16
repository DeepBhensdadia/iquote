import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const.dart';
import 'etenderdetailspage.dart';
import 'etendersscreen.dart';

class ETenderListingPage extends StatefulWidget {
  const ETenderListingPage({super.key});

  @override
  State<ETenderListingPage> createState() => _ETenderListingPageState();
}

class _ETenderListingPageState extends State<ETenderListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const ETendersScreen());
          },
          backgroundColor: custom,
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text("E-Tenders"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.to(const ETenderDetailsPage());
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
                                        "Road Construction Tender",
                                        style: textstyle(
                                            kblack, FontWeight.w600, 16),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(

                                        "NHAI - National Highway Authority Of India",
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
                            Text(
                              maxLines: 2,
                              "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                              style: textstyle(kgrey, FontWeight.w500, 12),
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
                                        "Enquire Now",
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
                                        "Download",
                                        style: textstyle(
                                            Colors.black, FontWeight.w500, 12),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      "Tender ID - #123456",
                                      style: textstyle(kgrey, FontWeight.w600, 8),
                                    ),
                                    const SizedBox(
                                      height: 0,
                                    ),
                                    Text(
                                      maxLines: 2,
                                      "Est Value  - 12 Lakhs",
                                      style: textstyle(kgrey, FontWeight.w600, 8),
                                    ),

                                    Text(
                                      textAlign: TextAlign.end,
                                      maxLines: 2,
                                      "Due Date - 12 January 2022\n By - SBI",
                                      style: textstyle(kgrey, FontWeight.w600, 8),
                                    ),
                                  ],
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
    );
  }
}
