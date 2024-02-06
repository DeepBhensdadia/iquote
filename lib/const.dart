import 'package:flutter/material.dart';

const custom = Color(0xff131921);
const advertisement = Color(0xff1F2937);
const yellowcustomer = Color(0xffF1BC5E);
const kwhite = Colors.white;
const kblack = Colors.black;
const kblue = Colors.blue;
const kgrey = Colors.grey;
const headingsub = Color(0xff454545);
const headingans = Color(0xff656B74);

textstyle(Color? colorsd, FontWeight? fontw, double? fonts) {
  return TextStyle(color: colorsd, fontWeight: fontw, fontSize: fonts);
}

TextStyle headingstyle = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w500);

final setting = [
  "Read Receipts",
  "Default Validity Timer",
  "Set Signature",
  "Enable SMS alerts",
  "Enable Email alerts",
  "Enable Watermark",
  "Auto Generate Quotation Number",
  "Terms & Conditions",
];
