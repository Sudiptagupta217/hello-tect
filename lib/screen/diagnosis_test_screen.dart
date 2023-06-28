import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_switch.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';

import '../widgets/default_colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DiagnosisTestScreen extends StatefulWidget {
  const DiagnosisTestScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosisTestScreen> createState() => _DiagnosisTestScreenState();
}

class _DiagnosisTestScreenState extends State<DiagnosisTestScreen>{

  @override
  Widget build(BuildContext context) {
    bool _isSwitched = false;
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
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
                      percent: 0.0,
                    center:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("0", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 70.0,color: Color(0xff767676)),),
                      Text("/24", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0,color: DefaultColor.light_blue),),
                    ],),
                    //  center: Text("70%", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                      progressColor: Colors.blue,
                    ),


                    SizedBox(height:15),
                    Text(textAlign: TextAlign.center, "Perform tests to make sure your phone is working properly",style: TextStyle(color: Color(0xff767676),fontSize: 13),),
                    SizedBox(height: 15,),
                    CustomButton(text: 'START',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),backgroundColor: DefaultColor.light_blue,foregroundColor: Colors.white,padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),callback: () {
                      Navigator.pushNamed(context, "/diagnosistestingscreen");
                    },)

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
                      "Diagnosis",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/diadnosisitem.png"),
                            radius: 23,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Screen",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          CustomSwitch(value: _isSwitched)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/diadnosisitem.png"),
                            radius: 23,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Battery",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          CustomSwitch(value: _isSwitched)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/diadnosisitem.png"),
                            radius: 23,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Calling & Internet",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          CustomSwitch(value: _isSwitched)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/diadnosisitem.png"),
                            radius: 23,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "System Performance",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          CustomSwitch(value: _isSwitched)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/diadnosisitem.png"),
                            radius: 23,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "System Software",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          CustomSwitch(value: _isSwitched)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
