import 'package:flutter/material.dart';

import '../const.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.sort))
      ]),
      body: SingleChildScrollView(
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
                    "Create Quatation",
                    style: textstyle(kblack, FontWeight.w500, 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
               ListView.builder(shrinkWrap: true,itemCount: setting.length,itemBuilder: (context, index) {
                 return  TextButton(
                   onPressed: () {},
                   child: Row(
                     children: [
                       Text(

                         setting[index],
                         style: textstyle(kblack.withOpacity(0.6), FontWeight.w500, 16),
                       ),
                     ],
                   ),
                 );
               },)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
