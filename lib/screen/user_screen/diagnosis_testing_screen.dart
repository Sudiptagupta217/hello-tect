import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../widgets/buttom_manu.dart';
//https://www.youtube.com/watch?v=_WCzXuy5gpU&t=17s

class DiagnosisTestingScreen extends StatefulWidget {
  const DiagnosisTestingScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosisTestingScreen> createState() => _DiagnosisTestingScreenState();
}

class _DiagnosisTestingScreenState extends State<DiagnosisTestingScreen> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomFluidNavBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            CustomTopBar(
              text: 'Diagnosis Test',
              icon: Icon(
                Icons.search_outlined,
                color: DefaultColor.dark_blue,
                size: 22,
              ), callback: () {  },
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 85,vertical: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircularPercentIndicator(
                    radius: 90.0,
                    lineWidth: 9.0,
                    percent: 0.3,
                    center:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("3", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 70.0,color: Color(0xff767676)),),
                        Text("/24", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,color: DefaultColor.light_blue),),
                      ],),
                    //  center: Text("70%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                    progressColor: Colors.blue,
                  ),
                  SizedBox(height:15),
                  Text(textAlign: TextAlign.center, "Last Checked: 02/03/2023",style: TextStyle(color: Color(0xff767676),fontSize: 13),),
                ],
              ),

            ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Diagnosis Result",
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Battery",style: TextStyle(fontSize: 17,color: DefaultColor.light_blue,fontWeight: FontWeight.w600),),
                  Text(Utils.lorem,style: TextStyle(fontSize: 13,wordSpacing: 3),),
                  SizedBox(height: 10,),
                  Text("Calling & Internet",style: TextStyle(fontSize: 17,color: DefaultColor.light_blue,fontWeight: FontWeight.w600),),
                  Text(Utils.lorem,style: TextStyle(fontSize: 13,wordSpacing: 3),),
                  SizedBox(height: 10,),
                  Text("System Performance",style: TextStyle(fontSize: 17,color: DefaultColor.light_blue,fontWeight: FontWeight.w600),),
                  Text(Utils.lorem,style: TextStyle(fontSize: 13,wordSpacing: 3),),
                  SizedBox(height: 10,),
                ],
              ),
            )

          ]),
        ),
      ),
    );
  }
}
