import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:iquote/const.dart';

import '../../helper.dart';

class OfferDetailsPage extends StatefulWidget {
  const OfferDetailsPage({super.key});

  @override
  State<OfferDetailsPage> createState() => _OfferDetailsPageState();
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
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
                decoration: BoxDecoration(
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
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Center(child: Icon(Icons.arrow_back)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Center(child: Icon(Icons.share)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle),
                                    child: Center(child: Icon(Icons.search)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: kblack.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "124 Photos | 8 Videos",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50))),
                    child: Column(
                      children: [
                        SizedBox(
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
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Offer",
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
                                        child: Center(
                                            child: Icon(
                                          Icons.location_on,
                                          color: kblue,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color:
                                                yellowcustomer.withOpacity(0.3),
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Icon(
                                          Icons.favorite,
                                          color: yellowcustomer,
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Crown IHQL",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "10% Offer On Dinner Buffet",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
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
                              Text(
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
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(
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
                                      "Offer expires on 05,nov,2023",
                                      style:
                                          textstyle(kgrey, FontWeight.w500, 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Wrap(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
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
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.green),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                            maxLines: 2,
                                            "Collect Coupon",
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular Menu",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: kblue,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 130,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Card(
                              margin: EdgeInsets.all(10),
                              elevation: 5,
                              child: Container(
                                height: 150,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 130,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://media.designcafe.com/wp-content/uploads/2020/02/21004853/modern-kitchen-design-for-your-home.jpg")))),
                        ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8),
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
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/noun-auction-3194931 1.png")),
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8),
                                              topLeft: Radius.circular(8)),
                                          border: Border.all(
                                              width: 1.5, color: kgrey),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Offer On Dinner Buffet at KFC",
                                                        // bussiness.title ?? "",
                                                        style: textstyle(
                                                            kblack,
                                                            FontWeight.w600,
                                                            14),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            maxLines: 2,
                                                            "4.9",
                                                            style: textstyle(
                                                                Colors.black,
                                                                FontWeight.w500,
                                                                12),
                                                          ),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Row(
                                                              children:
                                                                  List.generate(
                                                            5,
                                                            (index) => Icon(
                                                              Icons.star,
                                                              size: 15,
                                                              color:
                                                                  Colors.orange,
                                                            ),
                                                          ).toList()),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Text(
                                                            maxLines: 2,
                                                            "103 Review",
                                                            style: textstyle(
                                                                Colors.black,
                                                                FontWeight.w400,
                                                                12),
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
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Flexible(
                                                            flex: 1,
                                                            child: Text(
                                                              maxLines: 2,
                                                              "Hotel Crown",
                                                              // bussiness.companyName ?? "",
                                                              style: textstyle(
                                                                  Colors.blue,
                                                                  FontWeight
                                                                      .w500,
                                                                  12),
                                                            ),
                                                          ),
                                                          Visibility(
                                                            visible: true,
                                                            child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          3,
                                                                      horizontal:
                                                                          5),
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .green,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                              child: Text(
                                                                maxLines: 2,
                                                                "Verified",
                                                                style: textstyle(
                                                                    Colors
                                                                        .white,
                                                                    FontWeight
                                                                        .w500,
                                                                    10),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        maxLines: 2,
                                                        // bussiness.address?? "",

                                                        "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar",
                                                        style: textstyle(
                                                            kgrey,
                                                            FontWeight.w500,
                                                            12),
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
                                              // "Offer expires on ${bussiness.validityTo}",
                                              style: textstyle(
                                                  kgrey, FontWeight.w600, 12),
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
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          color: Colors.grey.shade100,
                          height: 200,
                          width: screenwidth(context, dividedby: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Testimonial",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          color: Colors.white,
                          // height: 200,
                          width: screenwidth(context, dividedby: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
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
