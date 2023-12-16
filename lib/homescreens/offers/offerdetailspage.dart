import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:iquote/const.dart';

class OfferDetailsPage extends StatefulWidget {
  const OfferDetailsPage({super.key});

  @override
  State<OfferDetailsPage> createState() => _OfferDetailsPageState();
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Offers"), actions: [
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
                      "Plumbing Services from IHQL",
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
                    Row(
                      children: [
                        Text(
                          maxLines: 2,
                          "4.9",
                          style: textstyle(headingsub, FontWeight.w500, 14),
                        ),
                        const Icon(
                          Icons.star,
                          color: custom,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: custom,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: custom,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star,
                          color: custom,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_border,
                          color: custom,
                          size: 20,
                        ),
                        Text(
                          maxLines: 2,
                          "107 Ratings",
                          style: textstyle(headingans, FontWeight.w500, 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Plumbing Repairs & Services ",
                      style: textstyle(Colors.black, FontWeight.w500, 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    EasyRichText(
                      "Open Now: until 8:00 pm v",
                      patternList: [
                        EasyRichTextPattern(
                          targetString: 'Open Now',
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                      defaultStyle: textstyle(custom, FontWeight.w500, 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                          "Whatsapp",
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
                    Text("Offers",style: textstyle(custom, FontWeight.w500, 20),)
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
                    Text("Terms & Conditions",style: textstyle(custom, FontWeight.w500, 20),)
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
