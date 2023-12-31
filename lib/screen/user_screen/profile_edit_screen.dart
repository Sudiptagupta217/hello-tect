import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar_without_search.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/custom_date_format.dart';

class ProfileEditScreena extends StatefulWidget {
  const ProfileEditScreena({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreena> createState() => _ProfileEditScreenaState();
}

class _ProfileEditScreenaState extends State<ProfileEditScreena> {

  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomTopBarWithoutSearch(text: "Edit Profile",),

              Container(
                width: 125,
                height: 125,
                child: Stack(
                  children: [
                    Positioned(
                        right: 10,
                        left: 10,
                        top: 10,
                        bottom: 9,
                        child: Container(
                            height: 130,
                            width: 130,
                            child: CircleAvatar(
                              radius: 80,
                              backgroundImage: _imageFile == null
                                  ? AssetImage('assets/images/user.png') as ImageProvider<Object>
                                  : FileImage(File(_imageFile!.path)),
                            )
                        )),
                    Positioned(
                      top: 15,
                      right: 15,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => bottomsheet());
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: DefaultColor.light_blue),
                          child: Icon(Icons.edit,
                              color: Colors.white, size: 17),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
              Container(
                width: MediaQuery.of(context).size.width*0.87,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("       Name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87)),
                    CustomFormFiled(hintText: '  John Doe',width: double.infinity,margin: 7,height: 57),
                    SizedBox(height: 17,),
                    Text("       Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87)),
                    CustomFormFiled(hintText: '  johndoe@gmail.com',width: double.infinity,margin: 7,height: 57),
                    SizedBox(height: 17,),

                    Text("       Phone",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87)),
                    CustomFormFiled(hintText: '  +91 123456789',width: double.infinity,margin: 7,height: 57),
                    SizedBox(height: 17,),

                    Text("       DOB",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87)),
                   // CustomFormFiled(hintText: '  12 May 1992',width: double.infinity,margin: 7,height: 57),
                    CustomDateFormat(width:  double.infinity, hintText: "12 May 1992",margin: 5,textpading: 15),
                    SizedBox(height: 17,),

                    Text("       Description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black87)),
                    CustomFormFiled(hintText: '  ',maxline:5, width: double.infinity,margin: 7,height: 110),
                    SizedBox(height: 25,),

                    Center(
                      child: CustomButton(text: "SAVE CHANGES",
                          textStyle: TextStyle(fontSize: 16),
                          foregroundColor: DefaultColor.white,
                          backgroundColor: DefaultColor.light_blue,
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.07,vertical: 17),
                          callback: (){}),
                    ),
                    SizedBox(height: 35,),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }






  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                  Navigator.pop(context);
                },
                label: Text("Camera",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
              TextButton.icon(
                icon: Icon(Icons.image, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  Navigator.pop(context);
                },
                label: Text("Gallery",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
  }
}
