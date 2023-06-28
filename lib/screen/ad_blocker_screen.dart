import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_switch.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

class AdBlockerScreen extends StatefulWidget {
  const AdBlockerScreen({Key? key}) : super(key: key);

  @override
  State<AdBlockerScreen> createState() => _AdBlockerScreenState();
}

class _AdBlockerScreenState extends State<AdBlockerScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body:
      SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBar(
                text: 'Ad Blocker',
                icon: const Icon(
                  Icons.search_outlined,
                  color: DefaultColor.dark_blue,
                  size: 22,
                ),
                callback: () {},
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 110,
                child: Image.asset("assets/images/abb.png"),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 12,
                      blurRadius: 17,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Block Ads",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),
                    const SizedBox(height: 4,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Expanded(
                          flex: 5,
                            child: Text(textAlign: TextAlign.start,"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(fontSize: 11,color: Colors.grey.shade500),)),
                        Expanded(flex: 1,child: Container()),
                        Expanded(
                            flex: 1,
                            child: CustomSwitch(value:isSwitched ,)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 12,
                      blurRadius: 17,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Network Firewall",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700)),
                    SizedBox(height: 4,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Expanded(
                          flex: 5,
                            child: Text(textAlign: TextAlign.start,"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(fontSize: 11,color: Colors.grey.shade500),)),
                        Expanded(flex: 1,child: Container()),
                        Expanded(
                            flex: 1,
                            child: CustomSwitch(value:isSwitched ,)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 70,)
            ],
          ),
        ),
      ),
    );
  }
}
