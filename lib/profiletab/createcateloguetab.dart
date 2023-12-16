import 'package:flutter/material.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class CreateCatelogueTab extends StatefulWidget {
  const CreateCatelogueTab({super.key});

  @override
  State<CreateCatelogueTab> createState() => _CreateCatelogueTabState();
}

class _CreateCatelogueTabState extends State<CreateCatelogueTab> {
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
                  "Create Catelogue",
                  style: textstyle(kblack, FontWeight.w500, 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCustomerUi(
                  name: 'Add Product',
                  // iconsbut: Icons.arrow_drop_down,
                  details: 'Abc Corporation',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Add Brand',
                  details: 'Write down to subject',
                  onpress: () {},
                ),
                CreateCustomerUi(
                  name: 'Enter value',
                  details: 'Enter the value',
                  onpress: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Take Image",
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
                  name: 'Add Product Description',
                  details: 'Hello world',
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
                          style: textstyle(yellowcustomer, FontWeight.w500, 16),
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
    );
  }
}
