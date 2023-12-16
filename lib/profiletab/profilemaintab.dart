import 'package:flutter/material.dart';

import '../const.dart';
import 'abouttab.dart';
import 'bankinfotab.dart';
import 'contecttab.dart';
import 'createcateloguetab.dart';
import 'hourstab.dart';
import 'locationtab.dart';
import 'moretab.dart';

class ProfileMaintab extends StatefulWidget {
  const ProfileMaintab({super.key});

  @override
  State<ProfileMaintab> createState() => _ProfileMaintabState();
}

class _ProfileMaintabState extends State<ProfileMaintab>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController? controller;

  @override
  void initState() {
    controller = TabController(
      vsync: this,
      initialIndex: index,
      length: 7,
    );
    controller!.addListener(
      () {
        setState(
          () {
            index = controller!.index;
          },
        );
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: kgrey)),
              ),
            ),
            SizedBox(
              height: 40,
              child: TabBar(
                isScrollable: true,
                controller: controller,
                indicatorColor: const Color(0xfff3d55e),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                padding: EdgeInsets.zero,
                tabs: const [
                  Tab(
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Contect',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bank Info',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Location',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Hours',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Catelogue',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'More',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: const [
                  AboutTab(),
                  ContectTab(),
                  BankInfoTab(),
                  LocationTab(),
                  HoursTab(),
                  CreateCatelogueTab(),
                  MoreTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
