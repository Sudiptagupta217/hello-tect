import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_radio.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/query_float_btn.dart';

import '../../widgets/custom_topbar_without_search.dart';

enum Details { CardDetails, AccountDetails }

class Kyc2Screen extends StatefulWidget {
  const Kyc2Screen({Key? key}) : super(key: key);

  @override
  State<Kyc2Screen> createState() => _Kyc2ScreenState();
}

class _Kyc2ScreenState extends State<Kyc2Screen> {
  Details _selectedDetails = Details.CardDetails; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTopBarWithoutSearch(text: "Personal Details"),
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
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Details',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: DefaultColor.light_blue),
                    ),
                    CustomFormFiled(
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
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Address Details',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: DefaultColor.light_blue),
                    ),
                    CustomFormFiled(
                      hintText: "Address",
                      width: MediaQuery.of(context).size.width,
                      icon: Icon(Icons.location_on_rounded),
                    ),
                    CustomFormFiled(
                      hintText: "City",
                      width: MediaQuery.of(context).size.width,
                      icon: Icon(Icons.location_city_outlined),
                    ),
                    CustomFormFiled(
                      hintText: "State",
                      width: MediaQuery.of(context).size.width,
                      icon: Icon(Icons.location_city_sharp),
                    ),
                    CustomFormFiled(
                      hintText: "Zip Code",
                      width: MediaQuery.of(context).size.width,
                      icon: Icon(Icons.my_location),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    CustomButton(
                      text: "SUMBUT",
                      textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      foregroundColor: Colors.white,
                      backgroundColor: DefaultColor.light_blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.35,
                          vertical: 22),
                      callback: () {},
                    ),
                    SizedBox(height: 20,),

                    QueryFloatingButton(callback: () {},)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
