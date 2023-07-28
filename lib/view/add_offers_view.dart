import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/microwButton.dart';

import '../widgets/form_filed.dart';

class AddOffers extends StatefulWidget {
  const AddOffers({super.key});

  @override
  State<AddOffers> createState() => _AddOffersState();
}

class _AddOffersState extends State<AddOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("  Service Name",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600 ,fontFamily: "Raleway"),),
          CustomFormFiled(width: MediaQuery.of(context).size.width*0.9,redious: 25,hintText: "",height: 50,margin:7,backgroundColor: DefaultColor.white),

          SizedBox(height: 10,),

          Text("  Office Price",style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600 ,fontFamily: "Raleway"),),
          CustomFormFiled(width: MediaQuery.of(context).size.width*0.9,redious: 25,hintText: "",height: 50,margin:7,backgroundColor: DefaultColor.white),


          SizedBox(height: 20,),


       
          CustomButton(text: "SUBMIT",
              textStyle: TextStyle(fontFamily: "Raleway",fontWeight: FontWeight.w500,fontSize: 14),
              foregroundColor: DefaultColor.white,
              backgroundColor: DefaultColor.light_blue,
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 12),
              callback: (){}),


        ],
      ),

    );
  }
}
