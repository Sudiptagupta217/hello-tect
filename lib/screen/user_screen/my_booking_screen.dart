import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

import '../../view/booking_item_view.dart';
import '../../view/upcoming_booking_item_view.dart';
import '../../widgets/custom_topbar_without_search.dart';

class MyBookingsScreen extends StatefulWidget {
  const MyBookingsScreen({Key? key}) : super(key: key);

  @override
  State<MyBookingsScreen> createState() => _MyBookingsScreenState();
}

class _MyBookingsScreenState extends State<MyBookingsScreen> {
  Color container1Color = DefaultColor.light_blue;
  Color container2Color = Colors.white;
  Color text1Color = Colors.white;
  Color text2Color = Colors.black;

  int selectedContainer = 1;
  void _selectContainer(int containerNumber) {
    setState(() {
      selectedContainer = containerNumber;
      if (containerNumber == 1) {
        container1Color = DefaultColor.light_blue;
        container2Color = Colors.white;
        text1Color = Colors.white;
        text2Color = Colors.black;
      } else if (containerNumber == 2) {
        container1Color = Colors.white;
        container2Color = DefaultColor.light_blue;
        text1Color = Colors.black;
        text2Color = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CustomTopBarWithoutSearch(text: "My Bookings"),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [

                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 0.9,
                              blurRadius: 1,
                              offset: Offset(0, 3))
                        ]),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => _selectContainer(1),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: container1Color,
                            ),
                            child: Center(
                              child: Text(
                                'My Bookings',
                                style:
                                    TextStyle(fontSize: 15, color: text1Color),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => _selectContainer(2),
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: MediaQuery.of(context).size.width * 0.42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: container2Color,
                            ),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Upcoming Bookings',
                                style:
                                    TextStyle(fontSize: 15, color: text2Color),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: selectedContainer == 1 ? BookingItem() : UpcomingBookingItem(),
                  )

                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
