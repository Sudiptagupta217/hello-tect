import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

import '../../widgets/custom_topbar_without_search.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: DefaultColor.bg_color,
      
      body: Column(
        children: [
          CustomTopBarWithoutSearch(text: "Information"),

          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 40),
                    child: Text("About Us", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),

                SizedBox(height: 25,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: DefaultColor.white,
                        boxShadow: [BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(0, 3),
                            blurRadius: 3,
                            spreadRadius: 1)]
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Row(
                      children: const [
                        Text("Terms & conditions", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: DefaultColor.light_blue),),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17,color: DefaultColor.light_blue,)
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25,),

                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Refund Policy", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),

                const SizedBox(height: 35,),

                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Privacy Policy", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),

                const SizedBox(height: 35,),

                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Compliance", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                const SizedBox(height: 35,),

                Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(left:40),
                    child: Text("Contact Us", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
              ],
            ),
          )

        ],
      ),
    );
  }
}
