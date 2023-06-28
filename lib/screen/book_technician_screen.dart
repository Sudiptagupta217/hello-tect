import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_form_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/widgets/default_colors.dart';

class BookTechnicianScreen extends StatefulWidget {
  const BookTechnicianScreen({Key? key}) : super(key: key);

  @override
  State<BookTechnicianScreen> createState() => _BookTechnicianScreenState();
}

class _BookTechnicianScreenState extends State<BookTechnicianScreen> {
  late String _selecteddevice;
  late String _selectedbrand;
  late String _selectedmodel;

  List<String> devide = ['device1', 'device2', 'device3', 'device4'];
  List<String> brand = ['brand1', 'brand2', 'brand3', 'brand4', 'brand5'];
  List<String> model = ['model1', 'model2', 'model3', 'model4', 'model5'];

  @override
  void initState() {
    super.initState();
    _selecteddevice = devide[0];
    _selectedbrand = brand[0];
    _selectedmodel = model[0];
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
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  CustomTopBar(
                    text: 'Book Tech',
                    icon: Icon(
                      Icons.search_outlined,
                      color: DefaultColor.dark_blue,
                      size: 22,
                    ),
                    callback: () {},
                  ),
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Book Technician",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomFormFiled(
                          width: MediaQuery.of(context).size.width * 0.42,
                          hintText: "Date",
                          icon: Icon(Icons.calendar_month)),
                      CustomFormFiled(
                          width: MediaQuery.of(context).size.width * 0.42,
                          hintText: "Time",
                          icon: Icon(Icons.watch_later_outlined)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomFormFiled(
                          width: MediaQuery.of(context).size.width * 0.42,
                          hintText: "Phone",
                          icon: Icon(Icons.perm_phone_msg_outlined)),
                      CustomFormFiled(
                          width: MediaQuery.of(context).size.width * 0.42,
                          hintText: "Name",
                          icon: Icon(Icons.account_circle_outlined)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomFormFiled(
                        width: MediaQuery.of(context).size.width * 0.42,
                        hintText: "Location",
                      ),
                      CustomFormFiled(
                        width: MediaQuery.of(context).size.width * 0.42,
                        hintText: "Complaint",
                      ),
                    ],
                  ),
                  CustomFormFiled(
                    hintText: 'Details',
                    width: MediaQuery.of(context).size.width * 0.87,
                    maxline: 3,
                    height: 110,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                      text: "Book Technician",
                      textStyle:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                      foregroundColor: DefaultColor.white,
                      backgroundColor: DefaultColor.light_blue,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.25,
                          vertical: 22),
                      callback: () {
                       Navigator.pushNamed(context, "/BookingConfirmedScreen");
                      }),
                  SizedBox(
                    height: 50,
                  ),
                ]))));
  }
}
