import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/customercontoller.dart';

import '../const.dart';
import '../widget/customerpage_text_ui.dart';

class CreateCustomers extends StatefulWidget {
  const CreateCustomers({super.key});

  @override
  State<CreateCustomers> createState() => _CreateCustomersState();
}

class _CreateCustomersState extends State<CreateCustomers> {
  CustomerController customerController = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Create Customers"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Card(
            elevation: 5,
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Customers",
                      style: textstyle(kblack, FontWeight.w500, 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CreateCustomerUi(
                      name: 'Add Customer',
                      details: 'Abc Corporation',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      Controlleer: customerController.cutomername,
                      name: 'Name',
                      details: 'Deep Bhensdadia',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      Controlleer: customerController.cutomerphone,
                      name: 'Phone Number',
                      details: '9328143230',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      Controlleer: customerController.cutomeremail,
                      name: 'Email',
                      details: 'deeppatel@gmail.com',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      Controlleer: customerController.cutomeradress,
                      name: 'Adress',
                      details: '18,shreeji krupa ,surat',
                      onpress: () {},
                    ),
                    CreateCustomerUi(
                      Controlleer: customerController.cutomerremark,
                      name: 'Remark',
                      details: 'Hello world',
                      onpress: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Container(
                        //   width: 100,
                        //   height: 35,
                        //   padding: const EdgeInsets.symmetric(
                        //       vertical: 5, horizontal: 15),
                        //   decoration: BoxDecoration(
                        //       color: custom,
                        //       borderRadius: BorderRadius.circular(10)),
                        //   child: Center(
                        //     child: Text(
                        //       "Edit",
                        //       style: textstyle(kwhite, FontWeight.w500, 16),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 15,
                        // ),
                        InkWell(
                          onTap: () {
                            customerController.createCustomer();
                          },
                          child: Container(
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
