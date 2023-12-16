import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/customercontoller.dart';
import 'package:iquote/helper.dart';
import 'package:iquote/model/customer/getcustomerresponemodel.dart';
import '../const.dart';
import '../dashboard/createcustomers.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  CustomerController customerController = Get.put(CustomerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const CreateCustomers());
            },
            backgroundColor: custom,
            child: const Icon(Icons.add)),
        appBar: AppBar(title: const Text("Customers"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: Obx(
          () => customerController.customerShow.isFalse
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: customerController.customerlist.length,
                  itemBuilder: (context, index) {
                    Customer customer = customerController.customerlist[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Slidable(
                        endActionPane: ActionPane(
                            extentRatio: screenwidth(context, dividedby: 800),
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                autoClose: true,
                                onPressed: (context) {},
                                backgroundColor: const Color(0xFF2C4475),
                                foregroundColor: Colors.white,

                                // icon: Icons.archive,
                                label: 'Edit'.tr,
                              ),
                              SlidableAction(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                autoClose: true,
                                onPressed: (context) {
                                  customerController.deleteCustomer(id: customer.id.toString());
                                },
                                backgroundColor: const Color(0xFFEB4359),
                                foregroundColor: Colors.white,
                                // icon: Icons.save,
                                label: 'Delete'.tr,
                              ),
                            ]),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1.5, color: kgrey),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundColor: kgrey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      customer.customerName ?? "",
                                      style: textstyle(
                                          kblack, FontWeight.w600, 16),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      customer.phone ?? "",
                                      style:
                                          textstyle(kgrey, FontWeight.w500, 14),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      customer.email ?? "",
                                      style:
                                          textstyle(kgrey, FontWeight.w500, 14),
                                    ),
                                  ],
                                )
                              ]),
                              const Icon(
                                Icons.bookmark_added,
                                color: yellowcustomer,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ));
  }
}
