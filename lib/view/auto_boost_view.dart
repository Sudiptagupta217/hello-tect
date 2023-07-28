import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_switch.dart';

class AutoBoost extends StatelessWidget {
  const AutoBoost({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    return Container(
      height: 190,
      child:

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [
                Text("Always    ",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,fontFamily: "Raleway"),),
                SizedBox(width: 10,),
                CustomSwitch(value:isSwitched ,activeColor: Colors.green),
              ]),
              Row(children: [
                Text("Schedule",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,fontFamily: "Raleway"),),
                SizedBox(width: 10,),
                CustomSwitch(value:isSwitched ,activeColor: Colors.green),
              ]),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                  children: [
                Text("Currently",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,fontFamily: "Raleway"),),
                SizedBox(width: 10,),
                CustomSwitch(value:isSwitched ,activeColor: Colors.green),
              ]),
              Row(
                  children: [
                    Text("Currently",style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16 ,fontFamily: "Raleway"),),
                    SizedBox(width: 10,),
                    CustomSwitch(value:isSwitched ,activeColor: Colors.green),
                  ]),
            ],
          ),

        ],
      ),

    );
  }
}
