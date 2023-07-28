import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';

import '../../utils/default_colors.dart';
import '../../widgets/custom_topbar_without_search.dart';

class MyDevice extends StatefulWidget {
  const MyDevice({super.key});

  @override
  State<MyDevice> createState() => _MyDeviceState();
}

class _MyDeviceState extends State<MyDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text: "My Devices"),

              Container(
                width: MediaQuery.of(context).size.width*.9,
                child: Column(
                  children: [

                    SizedBox(height: 15,),

                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: DefaultColor.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                  height: 86,
                                  width: 70,
                                  child: Image.asset("assets/images/mob.png",fit: BoxFit.fill,)),
                              SizedBox(width: 7,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Real meal",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500,fontSize: 16)),
                                    SizedBox(height: 5,),
                                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", maxLines: null,style: TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w400,fontSize: 11,color: Color(0xff666666))),
                                  ],),
                              )
                            ],
                          ),
                        );
                      },)
                  ],
                ),
              ),

              SizedBox(height: 120,),

              CustomButton(text: "Add New Devices",
                  textStyle: TextStyle(fontFamily: "Raleway",fontWeight: FontWeight.w600,fontSize:15 ),
                  foregroundColor: DefaultColor.white,
                  backgroundColor: DefaultColor.light_blue,
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1,vertical: 17),
                  callback: () {
                Navigator.pushNamed(context, "/add_device");
                  },)

            ],
          ),
        ),
      ),


    );
  }
}
