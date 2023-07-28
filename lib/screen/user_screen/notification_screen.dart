import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/notification_cart.dart';

import '../../widgets/buttom_manu.dart';
import '../../widgets/custom_topbar_without_search.dart';
import '../../utils/default_colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var notification = [
    {
      "images": "assets/images/done.png",
      "title": "Your Qoute #1234 has been approved",
      "time": "Today: 12:39AM"
    },
    {
      "images": "assets/images/doneg.png",
      "title": "Your Qoute #1234 has been approved",
      "time": "Today: 12:39AM"
    },
    {
      "images": "assets/images/done.png",
      "title": "Your Qoute #1234 has been approved",
      "time": "Today: 12:39AM"
    },
    {
      "images": "assets/images/doneg.png",
      "title": "Your Qoute #1234 has been approved",
      "time": "Today: 12:39AM"
    },
  ];
  int selectedIndex = 2;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DefaultColor.bg_color,
        bottomNavigationBar: CustomFluidNavBar(
          selectedIndex: selectedIndex,
          onClicked: onClicked,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
              CustomTopBarWithoutSearch(text: "Notifications"),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              ListView(
                padding:  EdgeInsets.only(top: 5,bottom: 10),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: notification.map((value) {
                return NotificationCart(
                    image: Image.asset(value['images'].toString()),
                    time: value["time"].toString(),
                    title: value['title'].toString());
              }).toList()),
            ]),
          )
        ])));
  }
}
