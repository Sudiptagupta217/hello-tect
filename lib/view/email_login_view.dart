import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_form_filed.dart';

class EmailLoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => EmailLoginViewState();
}
class EmailLoginViewState extends State<EmailLoginView>{
  @override
  Widget build(BuildContext context) {
return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomFormFiled(
      width: MediaQuery.of(context).size.width*0.90,
          hintText: 'Enter Your Email',
          icon: Icon(
            Icons.email_outlined,
            color: Colors.grey,
            size: 20,
          ),
        ),
        CustomFormFiled(
          width: MediaQuery.of(context).size.width*0.90,
          hintText: 'Enter Verification Code',
          icon: Icon(Icons.password, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ), //
        Row(
          children: [
            Spacer(),
            Text("Resend Email",
                style: TextStyle(
                    color: Colors.grey.shade700)),
          ],
        ),
      ],
    )
);
  }

}