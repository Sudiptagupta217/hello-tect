import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Utils   {
 static String lorem = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
 static String text1="Price includes visit & Dignosis";
 static String text2="Spare part rates applicable as per rate market price";
 static String text3="Lorem Ipsum is simply dummy text of the printing and type setting industry.";
 static String text4="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been. typesetting industry. Lorem Ipsum has been.";


 static toastMessage(String message){
  Fluttertoast.showToast(msg: message);
 }

 static void flashBarMessage(String message, BuildContext context){
  showFlushbar(context: context,
      flushbar: Flushbar(
       message:message,
       backgroundColor:Colors.white,
       messageColor: Colors.black,
      )
  );
 }

}
