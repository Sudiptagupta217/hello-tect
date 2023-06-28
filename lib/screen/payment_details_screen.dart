import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';
import 'package:hello_tech_user/widgets/query_float_btn.dart';

import '../widgets/custom_form_filed.dart';
import '../widgets/custom_radio.dart';

enum Details { CardDetails, AccountDetails }

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  bool checkBoxValue = false;
  Details _selectedDetails = Details.CardDetails; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          children: [

            CustomTopBarWithoutSearch(text: "Enter Payment Details"),

            SizedBox(height: 15,),

            Row(
              children: <Widget>[
                SizedBox(width: 20),
                CustomRadio(
                  value: Details.CardDetails,
                  groupValue: _selectedDetails,
                  onChanged: (Details value) {
                    setState(() {
                      _selectedDetails = value;
                    });
                  },
                  activeColor:
                  DefaultColor.light_blue, //FDCE2D Set the active color
                ),
                SizedBox(width: 5),
                Text(
                  'Card Details',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 20),
                CustomRadio(
                  value: Details.AccountDetails,
                  groupValue: _selectedDetails,
                  onChanged: (Details value) {
                    setState(() {
                      _selectedDetails = value;
                    });
                  },
                  activeColor:
                  DefaultColor.light_blue, //FDCE2D Set the active color
                ),
                SizedBox(width: 5),
                Text(
                  'Account Details',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              width:MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 4),
                    child: Text(
                      'Card Details',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: DefaultColor.light_blue),
                    ),
                  ),
                  CustomFormFiled(
                    margin:10,
                    hintText: "Card Number",
                    width: MediaQuery.of(context).size.width,
                    icon: Icon(Icons.credit_card_sharp),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomFormFiled(
                        hintText: "Exp",
                        width: MediaQuery.of(context).size.width * 0.4,
                        icon: Icon(Icons.calendar_month),
                      ),
                      CustomFormFiled(
                        hintText: "Cvv",
                        width: MediaQuery.of(context).size.width * 0.4,
                        icon: Icon(Icons.info_rounded),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),

                  Container(
                    margin:EdgeInsets.only(left: 4),
                    child: Text(
                      'Upload Your Documents',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: DefaultColor.light_blue),
                    ),
                  ),

                  SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 135,
                        width: MediaQuery.of(context).size.width * 0.4,
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
                        width: MediaQuery.of(context).size.width * 0.40,
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

                ],
              ),
            ),

            Spacer(),
            Spacer(),

            Center(child: CustomButton(text: "NEXT",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold), foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue, padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.39,vertical: 20), callback: (){Navigator.pushNamed(context, "/SetUpPasswordScreen");})),

            Spacer(),

            Container(
              margin: EdgeInsets.only(right: 20),
              child: QueryFloatingButton(
                callback: () {},
              ),
            ),
            Spacer(),


          ],
        ),
      ),

    );
  }
}
