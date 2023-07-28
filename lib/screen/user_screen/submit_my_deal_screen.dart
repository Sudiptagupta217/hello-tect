import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

class SubmitMyDealScreen extends StatefulWidget {
  const SubmitMyDealScreen({Key? key}) : super(key: key);

  @override
  State<SubmitMyDealScreen> createState() => _SubmitMyDealScreenState();
}

class _SubmitMyDealScreenState extends State<SubmitMyDealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBar(
                text: "Submit My Deal",
                icon: Icon(
                  Icons.search_outlined,
                  color: DefaultColor.dark_blue,
                  size: 22,
                ),
                callback: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomFormFiled(
                      hintText: "Pay Rate",
                      width: MediaQuery.of(context).size.width * 0.4),
                  CustomFormFiled(
                      hintText: "Fixed Pay",
                      width: MediaQuery.of(context).size.width * 0.4),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomFormFiled(
                      hintText: "Technicans",
                      width: MediaQuery.of(context).size.width * 0.4),
                  CustomFormFiled(
                      hintText: "Paying Self /Cash",
                      width: MediaQuery.of(context).size.width * 0.4),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                  text: "SUBMIT",
                  textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                  foregroundColor: DefaultColor.white,
                  backgroundColor: DefaultColor.light_blue,
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.35,vertical: 20),
                  callback: () {
                    Navigator.pushNamed(context, "/BookingConfirmedScreen2");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
