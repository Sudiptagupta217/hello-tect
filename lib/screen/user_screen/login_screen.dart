import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../view/email_login_view.dart';
import '../../view/phone_number_login_view.dart';
import '../../view/user_name_login_view.dart';
import '../../widgets/custom_button.dart';
import '../../utils/default_colors.dart';
import '../../widgets/query_float_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                    height: 70, child: Image.asset("assets/images/logo.png")),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Wellcome",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: DefaultColor.light_blue),
              ),
              Text(
                "Login to your account",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),

              Container(
                height: 250,
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      alignment: Alignment.topLeft,
                      child: TabBar(
                        controller: _tabController,
                        indicatorColor: DefaultColor.light_blue,
                        labelColor: DefaultColor.light_blue,
                        unselectedLabelColor: Color(0xff939393),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 12,fontFamily: "Poppins",),
                        labelPadding: EdgeInsets.zero,
                        isScrollable: true,
                        tabs: [
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Tab(
                              text: 'User Name',
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Tab(
                              text: 'Email',
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Tab(
                              text: 'Phone Number',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Container(
                            child: UserNameLoginView(),
                          ),
                          Container(
                            child: EmailLoginView(),
                          ),
                          Container(
                            child: PhoneNumberLoginView(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: CustomButton(
                    text: "LOGIN",
                    textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.35,
                        vertical: 21),
                    callback: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  )),
              SizedBox(
                height: 40,
              ),
              QueryFloatingButton(
                callback: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
