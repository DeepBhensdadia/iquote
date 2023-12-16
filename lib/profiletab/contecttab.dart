import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class ContectTab extends StatefulWidget {
  const ContectTab({super.key});

  @override
  State<ContectTab> createState() => _ContectTabState();
}

class _ContectTabState extends State<ContectTab> {
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
                  "Contect Information",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCustomerUi(
                  name: 'Phone Number',
                  // iconsbut: Icons.arrow_drop_down,
                  details: '+91 9328143230',
                  iconsBut2: Icons.add_circle_outline,
                  onpress: () {},
                ), CreateCustomerUi(
                  name: 'Email Id',
                  // iconsbut: Icons.arrow_drop_down,
                  details: 'deepbhensdadia@gmail.com',
                  iconsBut2: Icons.add_circle_outline,
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Web Site',
                  details: 'www.google.com',
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
