import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class HoursTab extends StatefulWidget {
  const HoursTab({super.key});

  @override
  State<HoursTab> createState() => _HoursTabState();
}

class _HoursTabState extends State<HoursTab> {
  List<String> sort = [
    'Open With Main Hours',
    'Open With No Main Hours',
    'Temporarily Closed',
    'Permanently Closed'
  ];
  String selectedsort = 'Open With Main Hours';
  sortradiobutton() {
    return Column(
      children: sort.map((category) {
        return RadioListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          // controlAffinity: ListTileControlAffinity.trailing,
          activeColor: custom,
          title: Text(
            category,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: custom),
          ),
          value: category,
          groupValue: selectedsort,
          onChanged: (value) {
            setState(() {
              selectedsort = value!;
            });
          },
        );
      }).toList(),
    );
  }

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
                  "Open Hours",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hours",
                      style: textstyle(Colors.black54, FontWeight.w500, 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "set main business hour or mark your business as close",
                      style: textstyle(kgrey, FontWeight.w500, 16),
                    ),
                    Column(
                      children: [sortradiobutton()],
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: kgrey,
                    ),
                    CreateCustomerUi(
                      name: 'Special Hours',
                      details: 'Add',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      name: 'Add More business hours',
                      details: 'Add',
                      onpress: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
