import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/quatationcontroller.dart';
import 'package:iquote/helper.dart';
import 'package:iquote/model/quatation/getquatationresponse.dart';
import '../const.dart';
import '../dashboard/createquatation.dart';

class ViewQuatations extends StatefulWidget {
  const ViewQuatations({super.key});

  @override
  State<ViewQuatations> createState() => _ViewQuatationsState();
}

class _ViewQuatationsState extends State<ViewQuatations> {
  QuatationController quatationController = Get.put(QuatationController());
  @override
  void initState() {
    quatationController.getQuatation();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const CreateQuatation());
            },
            backgroundColor: custom,
            child: const Icon(Icons.add)),
        appBar: AppBar(title: const Text("Quatations"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: Obx(
          () => quatationController.quatationlistShow.isFalse
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: quatationController.quatationlist.length,
                  itemBuilder: (context, index) {
                    Quatation quatation =
                        quatationController.quatationlist[index];
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
                                  quatationController.deleteQuatation(id: quatation.id.toString());
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
                              Flexible(
                                flex: 7,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        backgroundColor: kgrey,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              quatation.title ?? "",
                                              style: textstyle(
                                                  kblack, FontWeight.w600, 16),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              quatation.quatationDate.toString() ?? "",
                                              style: textstyle(
                                                  kgrey, FontWeight.w500, 14),
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              quatation.amount ?? "",
                                              style: textstyle(
                                                  kgrey, FontWeight.w500, 14),
                                            ),
                                            index == 2
                                                ? Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        "Remarks",
                                                        style: textstyle(
                                                            kblack,
                                                            FontWeight.w600,
                                                            14),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        "• Shower & Faucets",
                                                        style: textstyle(
                                                            kgrey,
                                                            FontWeight.w500,
                                                            12),
                                                      ),
                                                      Text(
                                                        "• pipes",
                                                        style: textstyle(
                                                            kgrey,
                                                            FontWeight.w500,
                                                            12),
                                                      ),
                                                    ],
                                                  )
                                                : const SizedBox.shrink(),
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                              const Flexible(
                                  flex: 1,
                                  child: Icon(
                                    Icons.bookmark_added,
                                    color: yellowcustomer,
                                  ))
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
