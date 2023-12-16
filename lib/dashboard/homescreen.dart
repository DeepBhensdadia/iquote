import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/customercontoller.dart';
import 'package:iquote/widget/homepagefistfield.dart';
import '../const.dart';
import '../helper.dart';
import '../homescreens/customers.dart';
import '../homescreens/eauction/eauctionlistingscreen.dart';
import '../homescreens/etender/etenderlistingpage.dart';
import '../homescreens/loans/loanslistingpage.dart';
import '../homescreens/offers/offerlistingpage.dart';
import '../homescreens/settings.dart';
import '../homescreens/viewcatelogue.dart';
import '../homescreens/viewquatations.dart';
import '../profiletab/profilemaintab.dart';
import '../widget/Icons_withname.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CustomerController customerController = Get.put(CustomerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: const Text("HomeScreen")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: First_Textfield(),
              ),
              SizedBox(
                height: 340,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 300,
                          color: advertisement,
                        ),
                        Container(
                          height: 8,
                          color: yellowcustomer,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Cardcustom(
                                onpressed: () {
                                  Get.to(const OfferListingPage());
                                },
                                name: "Offers",
                                imageasset:
                                    "assets/images/noun-advert-2089739 1.png"),
                            Cardcustom(
                                onpressed: () {
                                  Get.to(const ETenderListingPage());
                                },
                                name: "E-Tenders",
                                imageasset:
                                    "assets/images/noun-business-4116307 1.png"),
                            Cardcustom(
                                onpressed: () {
                                  Get.to(const LoanListingPage());
                                },
                                name: "Loans",
                                imageasset:
                                    "assets/images/Group 1000001363.png"),
                            Cardcustom(
                                onpressed: () {
                                  Get.to(const EAuctionListingPage());
                                },
                                name: "E-Auction",
                                imageasset:
                                    "assets/images/noun-auction-3194931 1.png"),
                            Cardcustom(
                                onpressed: () {},
                                name: "Sale",
                                imageasset:
                                    "assets/images/Group 1000001363.png"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 3,
                color: Colors.grey.shade300,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconWithName(
                          onPressed: () {
                            customerController.getCustomer();
                            Get.to(const Customers());
                          },
                          name: "View\nCustomers",
                          imageAsset:
                              "assets/images/homescreenicon/View Customer.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const ViewQuatations());
                          },
                          name: "View\nQuatations",
                          imageAsset:
                              "assets/images/homescreenicon/receipt-solid.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const Catelogue());
                          },
                          name: "Messages",
                          imageAsset:
                              "assets/images/homescreenicon/comments-solid.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const Settings());
                          },
                          name: "Settings",
                          imageAsset:
                              "assets/images/homescreenicon/gear-solid.svg",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconWithName(
                          onPressed: () {
                            Get.to(const ETenderListingPage());
                          },
                          name: "View\nE-tender",
                          imageAsset:
                              "assets/images/homescreenicon/file-solid.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const LoanListingPage());
                          },
                          name: "View\nLoans",
                          imageAsset:
                              "assets/images/homescreenicon/landmark-solid.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const OfferListingPage());
                          },
                          name: "View\noffers",
                          imageAsset:
                              "assets/images/homescreenicon/tag-solid.svg",
                        ),
                        IconWithName(
                          onPressed: () {
                            Get.to(const ProfileMaintab());
                          },
                          name: "Create\nCustomers",
                          imageAsset:
                              "assets/images/homescreenicon/user-plus-solid.svg",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 3,
                color: Colors.grey.shade300,
                height: 30,
              ),
              Column(
                children: [
                  Badge(
                      alignment: AlignmentDirectional(45, 0),
                      padding: EdgeInsets.all(2),
                      // isLabelVisible: remider == 0 ? false : true,
                      label: Text(
                        "09",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: screenwidth(context, dividedby: 40)),
                      ),
                      child: Text(
                        "iWall",
                        style: textstyle(Colors.black, FontWeight.w600, 22),
                      )),
                  Card(
                      margin: EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                                height: 70,
                                width: 70,
                                "assets/images/dashboardicons/Ellipse 1.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lezypay_India",
                                    style: textstyle(
                                        Colors.black, FontWeight.w500, 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Lezypay India Private Limited",
                                    style: textstyle(
                                        Colors.blue, FontWeight.w400, 12),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "One point solution for all payment services for your business",
                                    style: textstyle(
                                        Colors.grey, FontWeight.w400, 10),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "75 Post",
                                        style: textstyle(
                                            Colors.grey, FontWeight.w600, 14),
                                      ),
                                      Text(
                                        "253 following",
                                        style: textstyle(
                                            Colors.grey, FontWeight.w600, 14),
                                      ),
                                      Text(
                                        "483 followers",
                                        style: textstyle(
                                            Colors.grey, FontWeight.w600, 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Cardcustom extends StatefulWidget {
  final String imageasset;

  final String name;

  final void Function() onpressed;

  const Cardcustom(
      {super.key,
      required this.imageasset,
      required this.name,
      required this.onpressed});

  @override
  State<Cardcustom> createState() => _CardcustomState();
}

class _CardcustomState extends State<Cardcustom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onpressed,
      child: Card(
        elevation: 3,
        margin: EdgeInsets.zero,
        child: SizedBox(
          height: 70,
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imageasset,
                height: 30,
                width: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  fontSize: screenheight(context, dividedby: 80),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
