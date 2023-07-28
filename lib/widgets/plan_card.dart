import 'package:flutter/material.dart';
import '../utils/default_colors.dart';
import 'custom_button.dart';

class PlanCard extends StatefulWidget {

  final Color headerColor;
  final Color buttonColor;
  final String userType;
  final String price;
  final String validity;
  final List  offers;

  final String buttonTitle;
  final VoidCallback callback;

  const PlanCard({Key? key,
  required this.headerColor,
  required this.buttonColor,
  required this.userType,
  required this.price,
  required this.validity,
  required this.offers,
  required this.buttonTitle,
    required this.callback

  }) : super(key: key);

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 480,
        width: MediaQuery.of(context).size.width*0.7,
        decoration: BoxDecoration(
            //color: Cowidget.hashCode),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300,
                  offset: Offset(0, 3),
                  spreadRadius: 1,
                  blurRadius: 11
              )
            ]
        ),

        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: widget.headerColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(widget.userType,style: TextStyle(fontSize: 17,color: DefaultColor.white)),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("\$ ",style: TextStyle(fontSize: 17,color: DefaultColor.white,fontWeight: FontWeight.bold),),
                      Text(widget.price,style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700,color: DefaultColor.white),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(widget.validity,style: TextStyle(fontSize: 16,color: DefaultColor.white),),
                ],
              ),
            ),


            Container(
              width: MediaQuery.of(context).size.width,
              height: 340,
              decoration: BoxDecoration(
                color: DefaultColor.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListView(
                      padding:  EdgeInsets.only(top: 5,bottom: 10),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: widget.offers.map((value) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Center(child: Text(value,style: TextStyle(fontSize: 16,color: Colors.grey),)),
                        );
                      }).toList()),


                  CustomButton(text: widget.buttonTitle,textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold), foregroundColor: DefaultColor.white, backgroundColor: widget.buttonColor, padding: EdgeInsets.symmetric(vertical: 16,horizontal: MediaQuery.of(context).size.width*0.07), callback: (){widget.callback();}),

                ],
              ),
            )
          ],
        ),

      );
  }
}
