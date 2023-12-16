import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First_Textfield extends StatelessWidget {
  const First_Textfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Container(
        height: 40,
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          child: Container(
                            height: 40,
                            width: 40,
                          ),
                          // child: Image(
                          //     width: 40,
                          //     height: 40,
                          //     fit: BoxFit.fill,
                          //     image: AssetImage(
                          //         "assets/images/dashboardicons/Create Customers.png"),
                          // ),
                        )),
                  ),
                  VerticalDivider(
                    width: 0,
                    thickness: 0.7,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          horizontal: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                        ),
                        readOnly: true,
                        onTap: () {},
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            // prefixIcon: Icon(Icons.search),
                            fillColor: Colors.purple,
                            border: InputBorder.none,
                            hintText: 'Search'.tr),
                      ),
                    ),
                  ),
                  // VerticalDivider(
                  //   width: 0,
                  //   thickness: 0.5,
                  //   color: Colors.black,
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 25,
                        color: Color(0xff294472),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.qr_code_scanner_sharp)),
            )
          ],
        ),
      ),
    );
  }
}
