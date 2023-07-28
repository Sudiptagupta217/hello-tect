import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hello_tech_user/utils/default_colors.dart';

import '../../widgets/custom_topbar.dart';
import '../../widgets/services_btn.dart';

class OfflineTechniciansSupport extends StatefulWidget {
  const OfflineTechniciansSupport({Key? key}) : super(key: key);

  @override
  State<OfflineTechniciansSupport> createState() =>
      _OfflineTechniciansSupportState();
}

class _OfflineTechniciansSupportState extends State<OfflineTechniciansSupport> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    const double itemHeight = 225;
    final double itemWidth = size.width / 2;

    int _currentIndex = 0;
    CarouselController _carouselController = CarouselController();
    List imageList = [
      {"id": 1, "image_path": 'assets/images/slider.png'},
      {"id": 2, "image_path": 'assets/images/slider.png'},
      {"id": 3, "image_path": 'assets/images/slider.png'}
    ];
    final CarouselController carouselController = CarouselController();
    int currentIndex = 0;

    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          color: DefaultColor.bg_color,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [

              CustomTopBar(
                text: 'Offline Technicians Support',
                icon: const Icon(
                  Icons.search_outlined,
                  color: DefaultColor.dark_blue,
                  size: 22,
                ),
                callback: () {},
              ),

              SizedBox(height: 10,),
              Column(
                children: [
                  CarouselSlider(
                    items: imageList.map((item) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Image.asset(
                          item['image_path'],
                          fit: BoxFit.fill,
                          width: double.infinity,
                      ),
                        ),
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),

                 const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.map((image) {
                      int index = imageList.indexOf(image);
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


              Container(
                  padding: EdgeInsets.all(20),
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: EdgeInsets.only(top: 5),
                    physics: BouncingScrollPhysics(),
                    childAspectRatio:(itemWidth / itemHeight),
                    shrinkWrap: true,
                    controller: new ScrollController(keepScrollOffset: false),
                   children: [
                        ServicesBtn(text: 'Auto Services',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/auto_services.png"),filedColor: Color(0xffCFE7DA),borderColor: Color(0xffCFE7DA), callback: () { Navigator.pushNamed(context, "/appliancerepairscreen"); }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Tech Support',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/TechSupport.png"),filedColor: Color(0xffFFE5EA),borderColor: Color(0xffFFE5EA), callback: () {Navigator.pushNamed(context, "/appliancerepairscreen");  }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Plumbing',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/Plumbing.png"),filedColor: Color(0xffF5EAFB),borderColor: Color(0xffF5EAFB), callback: () {  }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Electrical',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/Electrical.png"),filedColor: Color(0xffE2F2FF),borderColor: Color(0xffE2F2FF), callback: () {  }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Cleaning',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/cleaning.png"),filedColor: Color(0xffEAE4FF),borderColor: Color(0xffEAE4FF), callback: () {  }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Carpenters',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/Carpenters.png"),filedColor: Color(0xffFFF6E3),borderColor: Color(0xffFFF6E3), callback: () {  }, margin: EdgeInsets.symmetric(horizontal: 17),),
                        ServicesBtn(text: 'Aappliance Repair',textStyle: TextStyle(fontSize: 14,fontFamily: "Lato",fontWeight: FontWeight.w600),iconImage: Image.asset("assets/images/appliancerepair.png"),filedColor: Color(0xffFFEBF5),borderColor: Color(0xffFFEBF5), callback: () { Navigator.pushNamed(context, "/appliancerepairscreen"); }, margin: EdgeInsets.symmetric(horizontal: 17),),
                    ],
                  )),







            ],
          ),
        ),
      ),
    );
  }
}
