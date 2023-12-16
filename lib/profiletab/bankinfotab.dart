import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class BankInfoTab extends StatefulWidget {
  const BankInfoTab({super.key});

  @override
  State<BankInfoTab> createState() => _BankInfoTabState();
}

class _BankInfoTabState extends State<BankInfoTab> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
                  "Add Bank Information",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCustomerUi(
                  name: 'Bank Name',
                  // iconsbut: Icons.arrow_drop_down,
                  details: 'State Bank Of India',
                  iconsBut2: Icons.add_circle_outline,
                  onpress: () {},
                ), CreateCustomerUi(
                  name: 'IFSC Code',
                  // iconsbut: Icons.arrow_drop_down,
                  details: 'svbisv',
                  iconsBut2: Icons.add_circle_outline,
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Enter Account Number',
                  details: '123456789',
                  onpress: () {},
                ),  CreateCustomerUi(
                  name: 'Enter Account Number Again',
                  details: '123456789',
                  onpress: () {},
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
