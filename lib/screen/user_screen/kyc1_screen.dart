import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/query_float_btn.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../../widgets/custom_topbar_without_search.dart';

class Kyc1Screen extends StatefulWidget {
  const Kyc1Screen({Key? key}) : super(key: key);

  @override
  State<Kyc1Screen> createState() => _Kyc1ScreenState();
}

class _Kyc1ScreenState extends State<Kyc1Screen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTopBarWithoutSearch(text: "Personal Details"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 135,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                                shape: const CircleBorder(),
                                value: checkBoxValue,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue!;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images/pd3.png"),
                      ),
                      Text(
                        "Personal ID ",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                Container(
                  height: 135,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                                shape: const CircleBorder(),
                                value: checkBoxValue,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue!;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images/pd2.png"),
                      ),
                      Text(
                        "Take A Selfie ",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 135,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                                shape: const CircleBorder(),
                                value: checkBoxValue,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    checkBoxValue = newValue!;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: Image.asset("assets/images/pd1.png"),
                      ),
                      Text(
                        "Doc Sign",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                )
              ],
            ),

           const Spacer(),

            CustomButton(
                text: "NEXT",
                textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                foregroundColor: Colors.white,
                backgroundColor: DefaultColor.light_blue,
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.37,
                    vertical: 20),
                callback: () {
                  Navigator.pushNamed(context, "/Kyc2screen");
                }),
            const SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: QueryFloatingButton(callback: (){}),
            )

          ],
        ),
      ),
    );
  }
}
