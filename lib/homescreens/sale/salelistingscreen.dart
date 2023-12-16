import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iquote/homescreens/sale/saleaddscreen.dart';
import '../../const.dart';

class SaleListingPage extends StatefulWidget {
  const SaleListingPage({super.key});

  @override
  State<SaleListingPage> createState() => _SaleListingPageState();
}

class _SaleListingPageState extends State<SaleListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const SaleAddScreen());
          },
          backgroundColor: custom,
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text("Sale"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                print("error");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1.5, color: kgrey),
                  color: Colors.white,
                ),
                child: Column(
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
                                style: textstyle(kblack, FontWeight.w600, 14),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                maxLines: 2,
                                "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar, Odisha 751003, India",
                                style: textstyle(kgrey, FontWeight.w500, 10),
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
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1.5, color: kgrey),
                            color: kgrey,
                          ),
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 2,
                                "Amenities",
                                style: textstyle(kgrey, FontWeight.w600, 14),
                              ),
                              Text(
                                maxLines: 2,
                                "Build Up Areas",
                                style: textstyle(kgrey, FontWeight.w600, 14),
                              ),
                              Text(
                                maxLines: 2,
                                "Rent ",
                                style: textstyle(kgrey, FontWeight.w600, 14),
                              ),
                              Text(
                                maxLines: 2,
                                "Deposit",
                                style: textstyle(kgrey, FontWeight.w600, 14),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kgrey.withOpacity(0.3)),
                                child: Text(
                                  maxLines: 2,
                                  "Get Owner Details",
                                  style: textstyle(custom, FontWeight.w600, 14),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
