import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/default_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_date_format.dart';
import '../../widgets/custom_form_filed.dart';
import '../../widgets/query_float_btn.dart';

class VSignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<VSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                    height: 70, child: Image.asset("assets/images/logo.png")),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Wellcome",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                    color: DefaultColor.light_blue),
              ),
              Text(
                "Create your new account",
                style: TextStyle(fontSize: 13, color: Colors.grey,fontFamily: "Raleway",),
              ),
              CustomFormFiled(
                  hintText: "Full Name", icon: Icon(Icons.account_circle), width: MediaQuery.of(context).size.width,),
              CustomFormFiled(
                  hintText: "Email Address", icon: Icon(Icons.email_outlined), width: MediaQuery.of(context).size.width,),
              CustomFormFiled(
                  hintText: "Phone Number", icon: Icon(Icons.perm_phone_msg_outlined), width: MediaQuery.of(context).size.width,),
              CustomDateFormat(
                  hintText: "DOB", icon: Icon(Icons.date_range), width: MediaQuery.of(context).size.width,),
              CustomFormFiled(
                  hintText: "Reference ID", icon: Icon(Icons.sticky_note_2_outlined), width: MediaQuery.of(context).size.width,),
              CustomFormFiled(
                  hintText: "Enter Password", icon: Icon(Icons.lock_person_rounded), width: MediaQuery.of(context).size.width,),
              CustomFormFiled(
                  hintText: "Confirm Password",
                  icon: Icon(Icons.lock_outline_rounded), width: MediaQuery.of(context).size.width
                  ,),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CustomButton(
                  text: "NEXT",
                  textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                  foregroundColor: Colors.white,
                  backgroundColor: DefaultColor.light_blue,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.39,
                      vertical: 22),
                  callback: () {
                    Navigator.pushNamed(context, "/v_adddetails");
                  },
                ),
              ),
              SizedBox(height: 30,),
              QueryFloatingButton(callback: () {

              },)
            ],
          ),
        ),
      ),
    );
  }
}
