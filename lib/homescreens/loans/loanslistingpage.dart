import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iquote/homescreens/loans/postloanscreen.dart';
import '../../const.dart';
import 'loansdetailspage.dart';

class LoanListingPage extends StatefulWidget {
  const LoanListingPage({super.key});

  @override
  State<LoanListingPage> createState() => _LoanListingPageState();
}

class _LoanListingPageState extends State<LoanListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const PostLoanScreen());
          },
          backgroundColor: custom,
          child: const Icon(Icons.add)),
      appBar: AppBar(title: const Text("Loans"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Get.to(const LoanDetailsPage());
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
                      height: 100,
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
                                        "Personal Car Loan at 5.6% P.A",
                                        style: textstyle(
                                            kblack, FontWeight.w600, 16),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(

                                        "State Bank Of India",
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
                                        "Brochure",
                                        style: textstyle(
                                            Colors.black, FontWeight.w500, 12),
                                      ),
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
