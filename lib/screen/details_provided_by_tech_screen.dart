import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_form_filed.dart';
import '../widgets/query_float_btn.dart';

class DetailsProvidedTechScreen extends StatefulWidget {
  const DetailsProvidedTechScreen({Key? key}) : super(key: key);

  @override
  State<DetailsProvidedTechScreen> createState() => _DetailsProvidedTechScreenState();
}

class _DetailsProvidedTechScreenState extends State<DetailsProvidedTechScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body:SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                    height: 70, child: Image.asset("assets/images/logo.png")),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Wellcome",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: DefaultColor.light_blue),
              ),
              const Text(
                "Enter Details Provided By Tech",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),


              SizedBox(height: 20),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                hintText: 'Enter Code',
                icon: const Icon(
                  Icons.dashboard_rounded,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
              CustomFormFiled(
                width: MediaQuery.of(context).size.width*0.90,
                hintText: 'Enter Password',
                icon: Icon(Icons.lock_outline_rounded, color: Colors.grey),
              ),
              SizedBox(
                height: 80,
              ),

              Center(
                  child: CustomButton(
                    text: "SUBMIT",
                    textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.35,
                        vertical: 21),
                    callback: () {
                      Navigator.pushNamed(context, "/VerifyPersonalDetailsScreen");
                    },
                  )),
              SizedBox(
                height: 60,
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

