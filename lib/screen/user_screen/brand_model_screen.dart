import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_tech_user/widgets/custom_button.dart';
import 'package:hello_tech_user/widgets/custom_dropdown_filed.dart';
import 'package:hello_tech_user/widgets/custom_topbar.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

class BrandModelScreen extends StatefulWidget {
  const BrandModelScreen({Key? key}) : super(key: key);

  @override
  State<BrandModelScreen> createState() => _BrandModelScreenState();
}

class _BrandModelScreenState extends State<BrandModelScreen> {
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
          child: Column(
            children: [
              CustomTopBar(
                text: 'Brand & Model',
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
                height: 30,
              ),
              Text(
                "Choose Your Brand & Model",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,fontFamily: "Raleway"),
              ),

              CustomDropdown(
                  text: "Device",
                  dropdownColor: DefaultColor.light_blue,
                  width: MediaQuery.of(context).size.width * 0.4,
                  selectedOption: _selecteddevice,
                  listname: devide,
                  bgcolor: DefaultColor.light_blue,
                  hintcolor: Colors.white,
                  textColor: Colors.white),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomDropdown(
                      text: "Brand",
                      width: MediaQuery.of(context).size.width * 0.4,
                      selectedOption: _selectedbrand,
                      listname: brand,
                      bgcolor: DefaultColor.white,
                      hintcolor: DefaultColor.light_blue,
                      textColor: DefaultColor.light_blue),
                  CustomDropdown(
                      text: "Model",
                      width: MediaQuery.of(context).size.width * 0.4,
                      selectedOption: _selectedmodel,
                      listname: model,
                      bgcolor: DefaultColor.white,
                      hintcolor: DefaultColor.light_blue,
                      textColor: DefaultColor.light_blue),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              CustomButton(
                text: "SUBMIT",
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,fontFamily: "Raleway"),
                foregroundColor: DefaultColor.white,
                backgroundColor: DefaultColor.light_blue,
                padding: EdgeInsets.symmetric(
                    vertical: 22,
                    horizontal: MediaQuery.of(context).size.width * 0.35),
                callback: () {
                  Navigator.pushNamed(context, "/BookTechnicianScreen");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
