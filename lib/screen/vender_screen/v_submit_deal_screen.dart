import 'package:flutter/material.dart';

import '../../utils/default_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_filed.dart';
import '../../widgets/custom_topbar_without_search.dart';

class VSubmitDealScreen extends StatefulWidget {
  const VSubmitDealScreen({super.key});

  @override
  State<VSubmitDealScreen> createState() => _VSubmitDealScreenState();
}

class _VSubmitDealScreenState extends State<VSubmitDealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: DefaultColor.bg_color,

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text:"Submit My Deal",),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Pay rate",height: 55,),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Hours",height: 55),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Add On Tools",height: 55),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Notes",height: 55),
                    ],
                  ),

                  Column(
                    children: [
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Final price",height: 55),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "paying self /cash",height: 55),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Add On Services",height: 55),
                      CustomFormFiled(width: MediaQuery.of(context).size.width*0.43,hintText: "Price",height: 55),
                    ],
                  )

                ],
              ),

              SizedBox(height: 70,),

              CustomButton(text: 'SUBMIT',
              textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
              backgroundColor: DefaultColor.light_blue,
              foregroundColor: DefaultColor.white,
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.35,vertical: 20),
              callback: (){},)

            ],
          ),
        ),
      ),

    );
  }
}
