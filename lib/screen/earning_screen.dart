import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/earning_cart.dart';

import '../widgets/buttom_manu.dart';
import '../widgets/default_colors.dart';

class EarningScreen extends StatefulWidget {
  const EarningScreen({Key? key}) : super(key: key);

  @override
  State<EarningScreen> createState() => _EarningScreenState();
}

class _EarningScreenState extends State<EarningScreen> {


  var updateData=[
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
    {'name': 'Lorem Ipsum text', 'date': 'Oct 17, 2022', 'rate': '\$15.00'},
  ];
  int selectedIndex = 1;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: CustomFluidNavBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopBar(
              text: "My Earnings",
              icon: const Icon(
                Icons.search_outlined,
                color: DefaultColor.dark_blue,
                size: 22,
              ),
              callback: () {},
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Total Earning",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1)),
                  const Text("\$ 1,123.24",
                      style: TextStyle(
                          fontSize: 40,
                          color: DefaultColor.light_blue,
                          fontWeight: FontWeight.w700)),
                  Text(
                    "Updated Today 8pm",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      text: "Transfer To Bank",
                      foregroundColor: DefaultColor.white,
                      backgroundColor: const Color(0xff5050F4),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      callback: () {
                        Navigator.pushNamed(context, "/SendMoneyScreen");
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text("Monthly Earnings",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5)),
                      Spacer(),
                      Icon(
                        Icons.more_horiz,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child:EarningCart(outerColor: Color(0xffE3F3FF),innerColor: Color(0xff3180E7),latter: "O",month: "October",value: "240.00",)
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                              child:EarningCart(outerColor: Color(0xffFFEEEF),innerColor: Color(0xffDC5961),latter: "N",month: "November",value: "250.00",)
                          )),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                              child:EarningCart(outerColor: Color(0xffFFF2E2),innerColor: Color(0xffE59752),latter: "S",month: "September",value: "240.00",)

                          )),
                    ],
                  ),

                  const SizedBox(height: 20,),
                  const Text("Daily Updates",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5)),
                  const SizedBox(height: 10,),

                  ListView(
                    padding: EdgeInsets.only(top: 5),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children:updateData.map((value){
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    offset: Offset(0, 2), // vertical offset
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: const Image(image: AssetImage("assets/images/user.png")),
                              title: Text(value['name'].toString(),style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                              subtitle: Text(value['date'].toString()),
                              trailing: Text(value['rate'].toString(),style: const TextStyle(fontSize: 16,color:DefaultColor.light_blue,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        );
                      }).toList()
                  )



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
