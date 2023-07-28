import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/utils/default_colors.dart';
import 'package:hello_tech_user/widgets/services_btn.dart';

import '../../widgets/buttom_manu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    CarouselController _carouselController = CarouselController();
    final List<String> images = [
      'assets/images/slider.png',
      'assets/images/slider.png',
      'assets/images/slider.png',
    ];

    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      bottomNavigationBar: CustomFluidNavBar(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              TopBar(),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  CarouselSlider(
                    carouselController: _carouselController,
                    items: images.map((image) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              image,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 175,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.map((image) {
                      int index = images.indexOf(image);
                      return Container(
                        width: 10,
                        height: 4,
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == _currentIndex
                              ? DefaultColor.light_blue
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Our Services",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21,fontFamily: "Raleway"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child:
                      ServicesBtn(
                        margin: EdgeInsets.symmetric(horizontal: 21),
                        text: 'Diagnosis',
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600,fontFamily: "Lato"),
                        filedColor: Color(0xffD8FEEA),
                        borderColor: Color(0xffB6F0D1),
                        iconImage: Image.asset("assets/images/diagnosis.png"),
                        callback: () {
                          Navigator.pushNamed(context, "/diagnosistestscreen");
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ServicesBtn(
                        margin: EdgeInsets.symmetric(horizontal: 21),
                        text: 'Offline Technicians',
                        textStyle: TextStyle(
                          color: Colors.black87,fontFamily: "Lato",
                            fontSize: 14, fontWeight: FontWeight.w600),
                        borderColor: Color(0xffFFD9E0),
                        filedColor: Color(0xffFFE5EA),
                        iconImage: Image.asset("assets/images/ots.png"),
                        callback: () {
                          Navigator.pushNamed(context, "/ots");
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ServicesBtn(
                       margin: EdgeInsets.symmetric(horizontal: 21),
                        text: 'Ad Blocker',
                        textStyle: TextStyle(
                            fontSize: 14,fontFamily: "Lato", fontWeight: FontWeight.w600),
                        borderColor: Color(0xffF0D5FF),
                        filedColor: Color(0xffF5EAFB),
                        iconImage: Image.asset("assets/images/ab.png"),
                        callback: () {Navigator.pushNamed(context, "/adblockerscreen");},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Choose Your Product",
                style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Raleway", fontSize: 21),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: GridView.builder(
                    padding: EdgeInsets.only(top: 5),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    controller: new ScrollController(keepScrollOffset: false),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/shopitemdetails');
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: .1,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // Adjust the offset if needed
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 40,
                                  child:
                                      Image.asset("assets/images/devise.png")),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Device Name",
                                style: TextStyle(fontFamily:"Poppins",fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        //  childAspectRatio: (itemWidth / itemHeight),
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                  )),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    text: "My Devices",
                    textStyle: TextStyle(fontSize: 17,fontFamily: "Raleway"),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width*0.1,
                        vertical: 14),
                    callback: () {
                      Navigator.pushNamed(context, "/my_device");
                    },
                  ),

                  CustomButton(
                    text: "Add Devices",
                    textStyle: TextStyle(fontSize: 17,fontFamily: "Raleway"),
                    foregroundColor: Colors.white,
                    backgroundColor: DefaultColor.light_blue,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width*0.1,
                        vertical: 14),
                    callback: () {
                      Navigator.pushNamed(context, "/add_device");

                    },
                  ),
                ],
              ),


              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

//TopBar
class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 90,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          const SizedBox(
            width: 40,
          ),
          Spacer(),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontFamily: "Raleway"),
              children: [
                TextSpan(
                  text: 'Hi, ',
                  style: TextStyle(
                      color: DefaultColor.light_blue,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: 'John',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/SearchScreen");
            },
            child: Container(
                width: 30,
                margin: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  size: 27,
                )),
          )
        ]),
      ),
    );
  }
}
