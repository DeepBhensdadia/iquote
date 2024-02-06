import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:iquote/getxcontrollers/catelogcontroller.dart';
import 'package:iquote/model/catelog/getcatelogresponse.dart';

import '../const.dart';
import '../helper.dart';
import 'createcatelog.dart';

class Catelogue extends StatefulWidget {
  const Catelogue({super.key});

  @override
  State<Catelogue> createState() => _CatelogueState();
}

class _CatelogueState extends State<Catelogue> {
  CatalogController catelogControler = Get.put(CatalogController());

  @override
  void initState() {
    catelogControler.getCatalog();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(const CreateCatelogs());
            },
            backgroundColor: custom,
            child: const Icon(Icons.add)),
        appBar: AppBar(title: const Text("Catelogue"), actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
        ]),
        body: Obx(
          () =>catelogControler.catalogShow.isFalse ? Center(child: CircularProgressIndicator()): ListView.builder(
            itemCount: catelogControler.cataloglist.length,
            itemBuilder: (context, index) {
              Catalouge catelog = catelogControler.cataloglist[index];
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
                            catelogControler.deleteCatelogue(id: catelog.id.toString());
                          },
                          backgroundColor: const Color(0xFFEB4359),
                          foregroundColor: Colors.white,
                          // icon: Icons.save,
                          label: 'Delete'.tr,
                        ),
                      ]),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 35,
                                  backgroundColor: kgrey,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        catelog.productName ?? "",
                                        style: textstyle(
                                            kblack, FontWeight.w600, 16),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        maxLines: 2,
                                        "₹ ${catelog.productValue}",
                                        style:
                                            textstyle(kgrey, FontWeight.w500, 14),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        maxLines: 2,
                                        "${catelog.brand}",
                                        style:
                                            textstyle(kgrey, FontWeight.w500, 14),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        maxLines: 2,
                                        catelog.description ?? "",
                                        style:
                                            textstyle(kgrey, FontWeight.w500, 14),
                                      ),
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
