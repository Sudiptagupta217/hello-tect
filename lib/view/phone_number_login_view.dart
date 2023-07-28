import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_form_filed.dart';

class PhoneNumberLoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => PhoneNumberLoginViewState();
}
class PhoneNumberLoginViewState extends State<PhoneNumberLoginView>{
  @override
  Widget build(BuildContext context) {
return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomFormFiled(
          width: MediaQuery.of(context).size.width*0.90,
          hintText: 'Enter Your Phone Number',
          icon: Icon(
            Icons.phone_outlined,
            color: Colors.grey,
            size: 20,
          ),
        ),
        CustomFormFiled(
          width: MediaQuery.of(context).size.width*0.90,
          hintText: 'Enter OTP',
          icon: Icon(Icons.password, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Spacer(),
            Text("Resend OTP",
                style: TextStyle(
                    color: Colors.grey.shade700)),
          ],
        ),
      ],
    )
);
  }

}