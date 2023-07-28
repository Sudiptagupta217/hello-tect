import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_card.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/utils/utils.dart';

class RefrigeratorRepairScreen extends StatefulWidget {
  const RefrigeratorRepairScreen({Key? key}) : super(key: key);

  @override
  State<RefrigeratorRepairScreen> createState() => _RefrigeratorRepairScreenState();
}

class _RefrigeratorRepairScreenState extends State<RefrigeratorRepairScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBar(
                text: 'Refrigerator Repair',
                icon: Icon(
                  Icons.search_outlined,
                  color: DefaultColor.dark_blue,
                  size: 22,
                ),
                callback: () {},
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child:

              //    CustomCard(name: 'Lorem Ipsom',image:"assets/images/slider.png", price: "\$100",text1: Utils.text1,text2: Utils.text2,buttontapped: (){},))


              ListView.builder(
                padding: EdgeInsets.only(top: 15),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext ctxt, int index) =>
                    CustomCard(
                      name: 'Lorem Ipsom',
                      image:"assets/images/vendor.png",
                      price: "\$100",
                      text1: Utils.text1,
                      text2: Utils.text2,
                      buttontapped: (){
                        Navigator.pushNamed(context, "/vendorsscreen");
                        },
                    )
              ),

              ),


            ],
          ),
        ),
      ),
    );
  }

}