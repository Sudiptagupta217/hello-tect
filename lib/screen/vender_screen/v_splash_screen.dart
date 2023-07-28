import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello_tech_user/utils/utils.dart';

import '../../utils/default_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/query_float_btn.dart';

class VSplashScreen extends StatefulWidget {
  const VSplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VSplashScreenState();
}

class _VSplashScreenState extends State<VSplashScreen> {

  DateTime? currentBackPressTime;

  Future<bool> onWillPop() async {
      if (currentBackPressTime == null ||
          DateTime.now().difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = DateTime.now();
        Utils.toastMessage('Press back again to exit');
        return false; // Return false to prevent navigating back
      }
      Navigator.of(context).popUntil((route) => route.isFirst);
      SystemNavigator.pop();
      return true;
    }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  height: 240,
                    child: Center(
                        child: Container(
                      margin: EdgeInsets.only(top: 100),
                      height: 100,
                      child: Image.asset("assets/images/logo.png"),
                    ))),

                Container(
                  height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButton(
                          text: 'LOGIN',
                          textStyle: TextStyle(fontSize: 19,fontFamily: "Raleway",fontWeight: FontWeight.w500),
                          foregroundColor: Colors.white,
                          backgroundColor: DefaultColor.light_blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.37,
                              vertical: 19),
                          callback: () {
                            Navigator.pushNamed(context, "/v_login");
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          text: 'Create Account',
                          textStyle: TextStyle(fontSize: 19,fontFamily: "Raleway",fontWeight: FontWeight.w500),
                          foregroundColor: Colors.white,
                          backgroundColor: DefaultColor.dark_blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.27,
                              vertical: 19),
                          callback: () {Navigator.pushNamed(context, "/v_signup");},
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 1.3,
                              width: 100,
                              color: Colors.grey,
                            ),
                            const Text("Or"),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 1.3,
                              width: 100,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    )),

                SizedBox(
                  height: 200,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          text: "ENTER CODE",
                          textStyle: TextStyle(fontSize: 19,fontFamily: "Raleway",fontWeight: FontWeight.w500),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xff5050F4),
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.3,
                              vertical: 19),
                          callback: () {
                            Navigator.pushNamed(context, "/DetailsProvidedTechScreen");
                          },
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: QueryFloatingButton(callback: () {  },),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
