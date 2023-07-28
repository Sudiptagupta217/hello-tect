import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

import '../../widgets/custom_date_format.dart';
import '../../widgets/query_float_btn.dart';


class VerifyPersonalDetailsScreen extends StatefulWidget {
  const VerifyPersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  State<VerifyPersonalDetailsScreen> createState() => _VerifyPersonalDetailsScreenState();
}

class _VerifyPersonalDetailsScreenState extends State<VerifyPersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTopBarWithoutSearch(text: "Verify Personal Details"),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  CustomFormFiled(hintText: "Full Name", width: MediaQuery.of(context).size.width,icon: Icon(Icons.account_circle_outlined,)),
                  CustomFormFiled(hintText: "Email Address", width: MediaQuery.of(context).size.width,icon: Icon(Icons.email_outlined,)),
                  CustomFormFiled(hintText: "Phone Number", width: MediaQuery.of(context).size.width,icon: Icon(Icons.perm_phone_msg_outlined,)),
                //  CustomFormFiled(hintText: "DOB", width: MediaQuery.of(context).size.width,icon: Icon(Icons.calendar_month,)),
                  CustomDateFormat(hintText: "DOB", width: MediaQuery.of(context).size.width,icon: Icon(Icons.calendar_month,)),
                  CustomFormFiled(hintText: "Address", width: MediaQuery.of(context).size.width,icon: Icon(Icons.location_on_rounded,)),
                  CustomFormFiled(hintText: "City", width: MediaQuery.of(context).size.width,icon: Icon(Icons.location_city_outlined,)),
                  CustomFormFiled(hintText: "State", width: MediaQuery.of(context).size.width,icon: Icon(Icons.location_city_sharp,)),
                  CustomFormFiled(hintText: "Zip Code", width: MediaQuery.of(context).size.width,icon: Icon(Icons.my_location,)),

                  SizedBox(height: 30,),

                  Center(child:
                  CustomButton(text: "NEXT",
                      textStyle: TextStyle(fontSize: 14,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                      foregroundColor: DefaultColor.white,
                      backgroundColor: DefaultColor.light_blue,
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.39,vertical: 20),
                      callback: (){Navigator.pushNamed(context, "/PaymentDetailsScreen");})),
                  SizedBox(height: 20,),

                  QueryFloatingButton(
                    callback: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
