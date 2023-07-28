import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';

class VAddOffersScreen extends StatefulWidget {
  const VAddOffersScreen({Key? key}) : super(key: key);

  @override
  State<VAddOffersScreen> createState() => _VAddOffersScreenState();
}

class _VAddOffersScreenState extends State<VAddOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      
      body: SingleChildScrollView(
        child : Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            CustomTopBarWithoutSearch(text: "Add Offer"),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Offer Title",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  CustomFormFiled(width: MediaQuery.of(context).size.width,height: 55,margin: 7,redious: 20,),
                  SizedBox(height: 20,),

                  Text("Service Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  CustomFormFiled(width: MediaQuery.of(context).size.width,height: 55,margin: 7,redious: 20,),
                  SizedBox(height: 20,),

                  Text("Office Price",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  CustomFormFiled(width: MediaQuery.of(context).size.width,height: 55,margin: 7,redious: 20,),
                  SizedBox(height: 20,),

                  Text("Offer Vaild Till",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  CustomFormFiled(width: MediaQuery.of(context).size.width,height: 55,margin: 7,redious: 20,),
                  SizedBox(height: 40,),

                  Center(
                    child: CustomButton(text: "SUBMIT",textStyle: const TextStyle(fontSize: 16), foregroundColor: DefaultColor.white, backgroundColor: DefaultColor.light_blue, padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.15,vertical: 17), callback: () {

                    },),
                  )

                ],
              ),
            )

          ]),
        ),
      ),
    );
  }
}
