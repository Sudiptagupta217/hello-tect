import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_form_filed.dart';
import '../widgets/default_colors.dart';
import '../widgets/query_float_btn.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpScreen> {
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
                    fontWeight: FontWeight.w700,
                    color: DefaultColor.light_blue),
              ),
              Text(
                "Create your new account",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              CustomFormFiled(
                width:MediaQuery.of(context).size.width*0.90,
                  hintText: "Full Name", icon: Icon(Icons.account_circle)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "Email Address", icon: Icon(Icons.email_outlined)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "Phone Number", icon: Icon(Icons.perm_phone_msg_outlined)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "DOB", icon: Icon(Icons.date_range)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "Reference ID", icon: Icon(Icons.sticky_note_2_outlined)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "Enter Password", icon: Icon(Icons.lock_person_rounded)),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                  hintText: "Confirm Password",
                  icon: Icon(Icons.lock_outline_rounded)),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CustomButton(
                  text: "NEXT",
                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),
                  foregroundColor: Colors.white,
                  backgroundColor: DefaultColor.light_blue,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.37,
                      vertical: 22),
                  callback: () {
                    Navigator.pushNamed(context, "/");
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
