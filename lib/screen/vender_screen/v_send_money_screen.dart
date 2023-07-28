import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';

import '../../utils/default_colors.dart';
import '../../widgets/form_filed.dart';
import '../../widgets/vender_buttom_manu.dart';

class VSendMoneyScreen extends StatefulWidget {
  const VSendMoneyScreen({Key? key}) : super(key: key);

  @override
  State<VSendMoneyScreen> createState() => _VSendMoneyScreenState();
}

class _VSendMoneyScreenState extends State<VSendMoneyScreen> {

  int vselectedIndex = 1;

  void onClicked(int index) {
    setState(() {
      vselectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: VenderBottomMenu(
        selectedIndex: vselectedIndex,
        onClicked: onClicked,
      ),
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopBar(
              text: "Send Money",
              icon: const Icon(
                Icons.search_outlined,
                color: DefaultColor.dark_blue,
                size: 22,
              ),
              callback: () {},
            ),

            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [

                  const Text("From",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5)),


                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 20),
                    decoration: const BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          colors: [
                           DefaultColor.light_blue,
                            Color(0xFF102E68)
                          ],
                          begin: FractionalOffset(0.2, 1.0),
                          end: FractionalOffset(1.5, 0.1),
                          stops: [0.0, 1.3],
                          tileMode: TileMode.clamp),
                    ),
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(children: const [
                        Text(
                          "wallet",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          '..2323',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ]),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "Amounts",
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w600,fontFamily: "Raleway",
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Available Balance",
                          style: TextStyle(
                            fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway"
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "\$ 756.00",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: DefaultColor.light_blue),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 24),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          suffixText: "0.00",
                          prefixIcon: const Icon(Icons.currency_rupee,
                              color: DefaultColor.light_blue)),
                    ),
                  ),

                  const SizedBox(height: 10,),

                   FormFiled(title: 'Bank Account Number',),
                   FormFiled(title: 'IFSC',),
                   FormFiled(title: 'Account Holder’s Name',),

                  const SizedBox(height: 20,),
                  CustomButton(text: 'SEND',
                  textStyle: const TextStyle(fontSize: 17,fontFamily: "Raleway"),
                  backgroundColor: DefaultColor.light_blue,
                  foregroundColor: DefaultColor.white,
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 12),
                    callback: () {},
                  ),
                  SizedBox(height: 20,)



                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



