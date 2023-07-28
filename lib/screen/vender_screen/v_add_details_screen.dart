import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/default_colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_dropdown_filed.dart';
import '../../widgets/custom_topbar.dart';
import '../../widgets/custom_topbar_without_search.dart';
import '../../widgets/query_float_btn.dart';

class VAddDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<VAddDetailsScreen> {
  late String _selectedcategory;
  late String _selectedspecialization;
  late String _selectedexperience;
  late String _selectedlanguage;

  List<String> category = ['category1', 'category2', 'category3', 'category4'];
  List<String> specialization = [
    'specialization1',
    'specializatio2',
    'specialization3',
    'specialization4'
  ];
  List<String> experience = [
    'experience1',
    'experience2',
    'experience3',
    'experience4'
  ];
  List<String> language = ['language1', 'language2', 'language3', 'language4'];

  @override
  void initState() {
    super.initState();
    _selectedcategory = category[0];
    _selectedspecialization = specialization[0];
    _selectedexperience = experience[0];
    _selectedlanguage = language[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:

        Column(
          children: [

            CustomTopBarWithoutSearch(text: "Add Details"),
            SizedBox(
              height: 20,
            ),

            Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    CustomDropdown(
                      text: 'Category',
                      listname: category,
                      selectedOption: _selectedcategory,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: DefaultColor.white,
                      textColor: DefaultColor.black,
                      hintcolor: Color(0xff969696),
                    ),
                    CustomDropdown(
                      text: 'Specialization',
                      listname: specialization,
                      selectedOption: _selectedspecialization,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: DefaultColor.white,
                      textColor: DefaultColor.black,
                      hintcolor: Color(0xff969696),

                    ),
                    CustomDropdown(
                      text: 'Experience',
                      listname: category,
                      selectedOption: _selectedexperience,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: DefaultColor.white,
                      textColor: DefaultColor.black,
                      hintcolor: Color(0xff969696),

                    ),
                    CustomDropdown(
                      text: 'Language',
                      listname: language,
                      selectedOption: _selectedlanguage,
                      width: MediaQuery.of(context).size.width,
                      bgcolor: DefaultColor.white,
                      textColor: DefaultColor.black,
                      hintcolor: Color(0xff969696),

                    ),
                    // SizedBox(
                    //   height: 120,
                    // ),
                  ],
                )),

            Spacer(),

            Container(
              child: Column(children: [
                CustomButton(
                  text: "PORCEED TO RESISTER",
                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,fontFamily: "Raleway",),
                  foregroundColor: Colors.white,
                  backgroundColor: DefaultColor.light_blue,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.23,
                      vertical: 22),
                  callback: () {},
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: QueryFloatingButton(callback: () {  },),
                )
              ]),
            )

          ],
        ),
      ),
    );
  }
}
