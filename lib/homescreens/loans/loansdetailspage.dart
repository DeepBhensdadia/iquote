import 'package:flutter/material.dart';
import 'package:iquote/const.dart';

class LoanDetailsPage extends StatefulWidget {
  const LoanDetailsPage({super.key});

  @override
  State<LoanDetailsPage> createState() => _LoanDetailsPageState();
}

class _LoanDetailsPageState extends State<LoanDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loan"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                width: double.infinity,
                // height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Buisness Loan - SBI",
                      style: textstyle(custom, FontWeight.w600, 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 2,
                      "Jaydev Vihar, Aswath Nagar, Nayapalli, Bhubaneswar, Odisha 751003, India",
                      style: textstyle(headingsub, FontWeight.w500, 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Row(
                    //   children: [
                    //     Text(
                    //       maxLines: 2,
                    //       "4.9",
                    //       style: textstyle(headingsub, FontWeight.w500, 14),
                    //     ),
                    //     Icon(
                    //       Icons.star,
                    //       color: custom,
                    //       size: 20,
                    //     ),
                    //     Icon(
                    //       Icons.star,
                    //       color: custom,
                    //       size: 20,
                    //     ),
                    //     Icon(
                    //       Icons.star,
                    //       color: custom,
                    //       size: 20,
                    //     ),
                    //     Icon(
                    //       Icons.star,
                    //       color: custom,
                    //       size: 20,
                    //     ),
                    //     Icon(
                    //       Icons.star_border,
                    //       color: custom,
                    //       size: 20,
                    //     ),
                    //     Text(
                    //       maxLines: 2,
                    //       "107 Ratings",
                    //       style: textstyle(headingans, FontWeight.w500, 12),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "Loan upto - 50 Lakhs at 1.1% p.a",
                      style: textstyle(Colors.black, FontWeight.w500, 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),  Text(
                      "Apply For Loan On Our Website or Visit Our Nearest Branch",
                      style: textstyle(Colors.black, FontWeight.w500, 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // EasyRichText(
                    //   "Tender Open Till:  29 April 2023, until 8:00 pm",
                    //   patternList: [
                    //     EasyRichTextPattern(
                    //       targetString: 'Tender Open Till',
                    //       style: TextStyle(color: Colors.green),
                    //     ),
                    //   ],
                    //   defaultStyle: textstyle(custom, FontWeight.w500, 14),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      children: [
                        Text(
                          "Call",
                          style: textstyle(custom, FontWeight.w500, 14),
                        ),const SizedBox(width: 30,),
                        Text(
                          "Email",
                          style: textstyle(custom, FontWeight.w500, 14),
                        ),const SizedBox(width: 30,),
                        Text(
                          "Message",
                          style: textstyle(custom, FontWeight.w500, 14),
                        ),const SizedBox(width: 30,),
                        Text(
                          "Book An Appointment",
                          style: textstyle(custom, FontWeight.w500, 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Text("Loan Details",style: textstyle(custom, FontWeight.w500, 20),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                height: 200,
                width: double.infinity,
                child: Column(
                  children: [
                    Text("Download Loan Form",style: textstyle(custom, FontWeight.w500, 20),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
