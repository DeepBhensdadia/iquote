import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iquote/const.dart';
import 'package:iquote/dashboard/postrequirments.dart';
import 'package:iquote/getxcontrollers/mainscreencontroller.dart';
import 'package:iquote/helper.dart';
import 'createcustomers.dart';
import 'createquatation.dart';
import 'homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyDashboardPage extends StatefulWidget {
  const MyDashboardPage({Key? key}) : super(key: key);

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
  Mainscreen_Conroller getx = Get.put(Mainscreen_Conroller());
  List<Widget> screens = [
    const CreateQuatation(),
    const PostRequirments(),
    const HomeScreen(),
    const PostRequirments(),
    const CreateCustomers(),
  ];

  @override
  void initState() {
    super.initState();
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //
    //   print('Got a message whilst in the foreground!');
    //   print('Message data: ${message.data}');
    //
    //   if (message.notification != null) {
    //     print('Message also contained a notification: ${message.notification}');
    //     NotificationApi.showNotification(
    //         title: message.notification?.title ?? "" , body:message.notification?.body ?? "" , onGoing: false);
    //   }
    // });
  }

  PageController _controller = PageController(initialPage: 2);

  void changePage(int page) => _controller.jumpToPage(page);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: () async {
          if (getx.currentTab.value == 2) {
            return true;
          } else {
            getx.currentTab.value = 2;
            changePage(2);
            return false; // Prevent default back button behavior
          }
        },
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: screens,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: screenheight(context, dividedby: 13),
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Obx(
                  () {
                    return CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        getx.currentTab.value = 0;
                        changePage(0);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          getx.currentTab.value == 0
                              ? SvgPicture.asset(
                            'assets/images/bottomnavigationbar/filled/Post Offers.svg',
                            semanticsLabel: 'My SVG Image',
                            width: screenheight(context, dividedby: 30),
                            height: screenheight(context, dividedby: 30),
                          )
                              : SvgPicture.asset(
                            'assets/images/bottomnavigationbar/Post Offers.svg',
                            semanticsLabel: 'My SVG Image',
                            width: screenheight(context, dividedby: 30),
                            height: screenheight(context, dividedby: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Post\nOffers '.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: 10,
                              color: getx.currentTab.value == 0
                                  ? const Color(0xff294472)
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Obx(
                  () => CupertinoButton(
                    padding: EdgeInsets.zero,
                    // minWidth: screenwidth(context, dividedby: 7),
                    onPressed: () {
                      getx.currentTab.value = 1;

                      changePage(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        getx.currentTab.value == 1
                            ? SvgPicture.asset(
                          'assets/images/bottomnavigationbar/filled/transaction.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        )
                            : SvgPicture.asset(
                          'assets/images/bottomnavigationbar/transaction.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Create\nQuotation'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 10,
                            color: getx.currentTab.value == 1
                                ? const Color(0xff294472)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => CupertinoButton(
                    padding: EdgeInsets.zero,
                    // minWidth: screenwidth(context, dividedby: 7),
                    onPressed: () {
                      getx.currentTab.value = 2;
                      changePage(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        getx.currentTab.value == 2
                            ? SvgPicture.asset(
                                'assets/images/bottomnavigationbar/filled/home.svg',
                                semanticsLabel: 'My SVG Image',
                                width: screenheight(context, dividedby: 30),
                                height: screenheight(context, dividedby: 30),
                              )
                            : SvgPicture.asset(
                                'assets/images/bottomnavigationbar/home.svg',
                                semanticsLabel: 'My SVG Image',
                                width: screenheight(context, dividedby: 30),
                                height: screenheight(context, dividedby: 30),
                              ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Home'.tr,
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 10,
                            color: getx.currentTab.value == 2
                                ? const Color(0xff294472)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => CupertinoButton(
                    padding: EdgeInsets.zero,
                    // minWidth: screenwidth(context, dividedby: 7),
                    onPressed: () {
                      getx.currentTab.value = 3;

                      changePage(3);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        getx.currentTab.value == 3
                            ? SvgPicture.asset(
                          'assets/images/bottomnavigationbar/filled/Post Requirement.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        )
                            : SvgPicture.asset(
                          'assets/images/bottomnavigationbar/Post Requirement.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Post\n Requirments'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 10,
                            color: getx.currentTab.value == 3
                                ? const Color(0xff294472)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Obx(
                  () => CupertinoButton(
                    padding: EdgeInsets.zero,
                    // minWidth: screenwidth(context, dividedby: 7),
                    onPressed: () {
                      getx.currentTab.value = 4;

                      changePage(4);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        getx.currentTab.value == 4
                            ? SvgPicture.asset(
                          'assets/images/bottomnavigationbar/filled/Explore Business.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        )
                            : SvgPicture.asset(
                          'assets/images/bottomnavigationbar/Explore Business.svg',
                          semanticsLabel: 'My SVG Image',
                          width: screenheight(context, dividedby: 30),
                          height: screenheight(context, dividedby: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Explore\n Business'.tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 10,
                            color: getx.currentTab.value == 4
                                ? const Color(0xff294472)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyDashboardPage extends StatefulWidget {
//   const MyDashboardPage({Key? key}) : super(key: key);
//
//   @override
//   State<MyDashboardPage> createState() => _MyDashboardPageState();
// }
//
// class _MyDashboardPageState extends State<MyDashboardPage> {
//   int currentscreens = 0;
//   final screens = [
//     const HomeScreen(),
//     const CreateQuatation(),
//     const PostRequirments(),
//     const CreateCustomers(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currenttab = const HomeScreen();
//   int tab = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         bottomNavigationBar: SizedBox(
//           height: 60,
//           child: BottomAppBar(
//             color: kwhite,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         currenttab = const HomeScreen();
//                         tab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.home),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           "Home",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 10,
//                             color: (tab == 1)
//                                 ? const Color(0xff1A242F)
//                                 : const Color(0xff909196).withOpacity(0.8),
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         currenttab = const CreateQuatation();
//                         tab = 2;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.currency_exchange_outlined),
//                         Text(
//                           "Create\nQuatation",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 10,
//                             color: (tab == 2)
//                                 ? const Color(0xff1A242F)
//                                 : const Color(0xff909196).withOpacity(0.8),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         currenttab = const PostRequirments();
//                         tab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.account_tree_outlined),
//                         Text(
//                           " Post\n Requirments",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 10,
//                             color: (tab == 3)
//                                 ? const Color(0xff1A242F)
//                                 : const Color(0xff909196).withOpacity(0.8),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         currenttab = const CreateCustomers();
//                         tab = 4;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         const Icon(Icons.account_box_outlined),
//                         Text(
//                           "Create\nCustomers",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             fontSize: 10,
//                             color: (tab == 4)
//                                 ? const Color(0xff1A242F)
//                                 : const Color(0xff909196).withOpacity(0.8),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         body: currenttab,
//       ),
//     );
//   }
// }
