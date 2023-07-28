import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/custom_form_filed.dart';
import '../widgets/fa_custom_form_filed.dart';

class UserNameLoginView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => UserNameLoginViewState();
}
class UserNameLoginViewState extends State<UserNameLoginView>{
  @override
  Widget build(BuildContext context) {
return Container(
  padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FACustomFormFiled(
          width: MediaQuery.of(context).size.width*0.90,
          hintText: 'User Name',
          icon:  FaIcon(FontAwesomeIcons.user,size: 18, color: Colors.grey,)

        ),
        CustomFormFiled(
          width: MediaQuery.of(context).size.width*0.90,
          hintText: 'Password',
          icon: Icon(Icons.lock_outline_rounded, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Spacer(),
            Text("Forget Password",
                style: TextStyle(
                    color: Colors.grey.shade700)),
          ],
        ),
      ],
    )
);
  }

}