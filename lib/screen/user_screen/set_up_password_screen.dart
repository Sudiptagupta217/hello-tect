import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/query_float_btn.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_filed.dart';

class SetUpPasswordScreen extends StatefulWidget {
  const SetUpPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SetUpPasswordScreen> createState() => _SetUpPasswordScreenState();
}

class _SetUpPasswordScreenState extends State<SetUpPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTopBarWithoutSearch(text: "Set Up Password"),
            
            Spacer(),

            Text("@username",style: TextStyle(fontSize: 20,fontFamily: "Poppins",fontWeight: FontWeight.w600),),
            Spacer(),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomFormFiled(
                    margin:10,
                    hintText: "Enter Password",
                    width: MediaQuery.of(context).size.width,
                    icon: Icon(Icons.lock_outline_rounded),
                  ),
                  SizedBox(height: 10,),
                  CustomFormFiled(
                    margin:10,
                    hintText: "Confirm Password",
                    width: MediaQuery.of(context).size.width,
                    icon: Icon(Icons.lock_outline_rounded),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(child:
            CustomButton
              (text: "SUBMIT",
                textStyle: TextStyle(fontSize: 15,fontFamily: "Raleway",fontWeight: FontWeight.w600),
                foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.37,vertical: 21),
                callback: (){Navigator.pushNamed(context, "/SetUpPasswordScreen");})),

            Spacer(),

            Container(
              margin: EdgeInsets.only(right: 20),
              child: QueryFloatingButton(
                callback: () {},
              ),
            )


          ],
        ),
      ),
    );
  }
}
