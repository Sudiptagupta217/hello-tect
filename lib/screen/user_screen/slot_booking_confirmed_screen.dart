import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

class SlotBookingConfirmedScreen extends StatefulWidget {
  const SlotBookingConfirmedScreen({Key? key}) : super(key: key);

  @override
  State<SlotBookingConfirmedScreen> createState() => _SlotBookingConfirmedScreenState();
}

class _SlotBookingConfirmedScreenState extends State<SlotBookingConfirmedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset("assets/images/bookingimg.png")),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Booking Confirmed",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: DefaultColor.light_blue),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Refrence ID: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("123456",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Time: ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("12:39AM",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
