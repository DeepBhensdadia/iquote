import 'package:flutter/material.dart';

import '../../../const.dart';

import '../../../widget/customerpage_text_ui.dart';

class ETendersScreen extends StatefulWidget {
  const ETendersScreen({super.key});

  @override
  State<ETendersScreen> createState() => _ETendersScreenState();
}

class _ETendersScreenState extends State<ETendersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("E - Tenders"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Card(
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Post E-Tenders",
                      style: textstyle(kblack, FontWeight.w500, 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CreateCustomerUi(
                      name: 'Company Name',
                      // iconsbut: Icons.arrow_drop_down,
                      details: 'Company name, if applicable',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Name',
                      details: 'Your Name',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Mobile Number',
                      details: 'Phone Number',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Email Id',
                      details: 'Email',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Select Category',
                      iconsBut: Icons.arrow_drop_down,
                      details: 'Category',
                      onpress: () {},
                    ),   CreateCustomerUi(
                      name: 'Tender Details',
                      // iconsbut: Icons.arrow_drop_down,
                      details: 'Details',
                      onpress: () {},
                    ),   CreateCustomerUi(
                      name: 'Service or product Required',
                      // iconsbut: Icons.arrow_drop_down,
                      details: 'details',
                      onpress: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upload Documents",
                          style: textstyle(Colors.black54, FontWeight.w500, 16),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera,
                            size: 20,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Take image from Camera & gallary",
                      style: textstyle(kgrey, FontWeight.w500, 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kgrey.withOpacity(0.3)),
                        height: 150,
                        width: double.infinity,
                        child: const Center(
                            child: Text(
                              "Take Image or Upload PDF",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: kgrey,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: kgrey,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CreateCustomerUi(
                      name: 'Enter Remark',
                      details: 'Add Comments',
                      onpress: () {},
                    ), CreateCustomerUi(
                      name: 'Tender Fees',
                      details: 'Add Tender Fees Details',
                      onpress: () {},
                    ),


                    CreateCustomerUi(
                      name: 'Term & Conditions',
                      details: 'Add Term & Conditions of your services',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Critical Dates',
                      details: 'Add Term & Conditions of your services',
                      onpress: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 35,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              color: custom,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Edit",
                              style: textstyle(kwhite, FontWeight.w500, 16),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 100,
                          height: 35,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1.5, color: kgrey)),
                          child: Center(
                            child: Text(
                              "Save",
                              style: textstyle(
                                  yellowcustomer, FontWeight.w500, 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
