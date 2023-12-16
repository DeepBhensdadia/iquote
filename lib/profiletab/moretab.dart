import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class MoreTab extends StatefulWidget {
  const MoreTab({super.key});

  @override
  State<MoreTab> createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  "More",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCustomerUi(
                  name: 'From The Bussiness',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Accessibility',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Amenities',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Crowd',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Highlight',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Offering',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Payments',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Payment',
                  details: 'Add',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Bank Information',
                  details: 'Add',
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
