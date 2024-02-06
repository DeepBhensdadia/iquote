import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:iquote/const.dart';

import 'package:iquote/homescreens/etender/etenderdetailspage.dart';

import '../../helper.dart';

class LoanDetailsPage extends StatefulWidget {
  const LoanDetailsPage({super.key});

  @override
  State<LoanDetailsPage> createState() => _LoanDetailsPageState();
}

class _LoanDetailsPageState extends State<LoanDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: screenheight(context, dividedby: 2.5),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://media.designcafe.com/wp-content/uploads/2020/02/21004853/modern-kitchen-design-for-your-home.jpg"))),
              ),
              Column(
                children: [
                  Container(
                    height: screenheight(context, dividedby: 2.8),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child:
                                const Center(child: Icon(Icons.arrow_back)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child:
                                    const Center(child: Icon(Icons.share)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child:
                                    const Center(child: Icon(Icons.search)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: kblack.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                "124 Photos | 8 Videos",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.3),
                                          borderRadius:
                                          BorderRadius.circular(5)),
                                      child: const Text(
                                        "Loan",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: kblue.withOpacity(0.3),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                            child: Icon(
                                              Icons.location_on,
                                              color: kblue,
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color:
                                            yellowcustomer.withOpacity(0.3),
                                            shape: BoxShape.circle),
                                        child: const Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: yellowcustomer,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "State Bank Of India",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Personal Car Laon at 5.6% P.A",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: yellowcustomer,
                                    ),
                                    Text(
                                      "19 Km",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: yellowcustomer,
                                    ),
                                    Text(
                                      "4.8 Rating",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
                                style: TextStyle(
                                    color: kblack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          color: Colors.grey.shade100,
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      maxLines: 2,
                                      // "Offer expires on 05, Nov 2023",
                                      "Tender ID - #0707766699ABD",
                                      style:
                                      textstyle(kgrey, FontWeight.w500, 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Wrap(
                                      spacing: 5,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              maxLines: 2,
                                              "Due Date : ",
                                              style: textstyle(Colors.black,
                                                  FontWeight.w400, 10),
                                            ),
                                            Container(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 2,
                                                  horizontal: 5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: Colors.black54),
                                                  borderRadius:
                                                  BorderRadius.circular(3)),
                                              child: Text(
                                                maxLines: 2,
                                                "05,Nov,2023",
                                                style: textstyle(Colors.blue,
                                                    FontWeight.w400, 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              maxLines: 2,
                                              " | Tender Estimated Value : ",
                                              style: textstyle(Colors.black,
                                                  FontWeight.w400, 10),
                                            ),
                                            Container(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 2,
                                                  horizontal: 5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: Colors.black54),
                                                  borderRadius:
                                                  BorderRadius.circular(3)),
                                              child: Text(
                                                maxLines: 2,
                                                "₹12 lakh",
                                                style: textstyle(Colors.green,
                                                    FontWeight.w400, 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1, color: Colors.blue),
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                          child: Text(
                                            maxLines: 2,
                                            // "+91 9328143230",
                                            "Enquire Now",
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
                                                  color: Colors.green),
                                              borderRadius:
                                              BorderRadius.circular(5)),
                                          child: Text(
                                            maxLines: 2,
                                            "Download",
                                            style: textstyle(Colors.black,
                                                FontWeight.w500, 12),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                              Text(
                                "Loan Details",
                                style: headingstyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop.",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Loan Returning Policy",
                                style: headingstyle,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop.",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      maxLines: 2,
                                      // "+91 9328143230",
                                      "Visit Website",
                                      style: textstyle(
                                          Colors.black, FontWeight.w500, 14),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.green),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      maxLines: 2,
                                      "Apply For Loan",
                                      style: textstyle(
                                          Colors.black, FontWeight.w500, 14),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Other Loans From SBI",
                                style: headingstyle,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8),
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
                                                        "Road Construction Tender",
                                                        style: textstyle(kblack,
                                                            FontWeight.w600, 16),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        "NHAI - National Highway Authority Of India",
                                                        style: textstyle(Colors.blue,
                                                            FontWeight.w500, 12),
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
                                              width: screenwidth(context, dividedby: 2),
                                              child: Text(
                                                maxLines: 2,

                                                "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                                                style: textstyle(
                                                    kgrey, FontWeight.w500, 12),
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
                                                      "Due Date : ",
                                                      style: textstyle(Colors.black,
                                                          FontWeight.w400, 8),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(
                                                          vertical: 2, horizontal: 5),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 0.5,
                                                              color: Colors.black54),
                                                          borderRadius:
                                                          BorderRadius.circular(3)),
                                                      child: Text(
                                                        maxLines: 2,
                                                        "${DateFormat('dd-MMM-yyyy').format(DateTime.now())}",
                                                        style: textstyle(Colors.blue,
                                                            FontWeight.w400, 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      maxLines: 2,
                                                      " | Tender Estimated Value : ",
                                                      style: textstyle(Colors.black,
                                                          FontWeight.w400, 8),
                                                    ),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(
                                                          vertical: 2, horizontal: 5),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              width: 0.5,
                                                              color: Colors.black54),
                                                          borderRadius:
                                                          BorderRadius.circular(3)),
                                                      child: Text(
                                                        maxLines: 2,
                                                        "₹12 lakh",
                                                        style: textstyle(Colors.green,
                                                            FontWeight.w400, 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: [
                                                Row(
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
                                                        "Enquire Now",
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
                                                        "Download",
                                                        style: textstyle(Colors.black,
                                                            FontWeight.w500, 12),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                // Column(
                                                //   crossAxisAlignment:
                                                //       CrossAxisAlignment.end,
                                                //   children: [
                                                //     Text(
                                                //       maxLines: 2,
                                                //       "Tender ID - #123456",
                                                //       style: textstyle(
                                                //           kgrey, FontWeight.w600, 8),
                                                //     ),
                                                //     Text(
                                                //       maxLines: 2,
                                                //       "100 people recently enquired",
                                                //       style: textstyle(
                                                //           kgrey, FontWeight.w600, 8),
                                                //     ),
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
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          color: Colors.grey.shade100,
                          height: 200,
                          width: screenwidth(context, dividedby: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              Text(
                                "Testimonial",
                                style: headingstyle,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          color: Colors.white,
                          // height: 200,
                          width: screenwidth(context, dividedby: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              Text(
                                "Terms & Conditions",
                                style: headingstyle,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                textAlign: TextAlign.justify,
                                "Lorem ipsum dolor sit amet consectetur. Tortor venenatis ipsum elementum mauris. Fusce morbi arcu sagittis ac sagittis ornare ultricies. Nec turpis libero morbi fermentum enim et sit. Hendrerit tellus fringilla nunc pellentesque faucibus scelerisque. Enim gravida bibendum consequat nibh. Nisl odio nisl viverra neque mattis senectus.  Lorem ipsum dolor sit amet consectetur. Tortor venenatis ipsum elementum mauris. Fusce morbi arcu sagittis ac sagittis ornare ultricies. Nec turpis libero morbi fermentum enim et sit. Hendrerit tellus fringilla nunc pellentesque faucibus scelerisque. Lorem ipsum dolor sit amet consectetur. Tortor venenatis ipsum elementum mauris. Fusce morbi arcu sagittis ac sagittis ornare ultricies. Nec turpis libero morbi fermentum ",
                                style: TextStyle(
                                    color: kblack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
