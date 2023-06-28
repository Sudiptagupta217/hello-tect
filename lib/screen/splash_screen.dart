import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/default_colors.dart';
import '../widgets/query_float_btn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                height: 225,
                  child: Center(
                      child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 100,
                    child: Image.asset("assets/images/logo.png"),
                  ))),

              Container(
                height: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        text: 'LOGIN',
                        textStyle: TextStyle(fontSize: 17),
                        foregroundColor: Colors.white,
                        backgroundColor: DefaultColor.light_blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.35,
                            vertical: 19),
                        callback: () {
                          Navigator.pushNamed(context, "/login");
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: 'SIGN UP',
                        textStyle: TextStyle(fontSize: 17),
                        foregroundColor: Colors.white,
                        backgroundColor: DefaultColor.dark_blue,
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.33,
                            vertical: 19),
                        callback: () {Navigator.pushNamed(context, "/signup");},
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 1.3,
                            width: 100,
                            color: Colors.grey,
                          ),
                          Text("Or"),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 1.3,
                            width: 100,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  )),

              Container(
                height: 235,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      CustomButton(
                        text: "ENTER CODE",
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xff5050F4),
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 0.31,
                            vertical: 19),
                        callback: () {
                          Navigator.pushNamed(context, "/DetailsProvidedTechScreen");
                        },
                      ),
                      Spacer(),
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
    );
  }
}
