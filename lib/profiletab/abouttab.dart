import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
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
                  "About Your Bussiness",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCustomerUi(
                  name: 'Bussiness Name',
                  // iconsbut: Icons.arrow_drop_down,
                  details: 'Abc Corporation',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Bussiness Category',
                  details: 'Abc Corporation',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Brand',
                  details: 'Abc Corporation',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Description',
                  details: 'Abc Corporation',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Opening Date',
                  details: 'Hello world',
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
