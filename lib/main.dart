import 'package:flutter/material.dart';
import 'package:hello_tech_user/screen/ad_blocker_screen.dart';
import 'package:hello_tech_user/screen/appliance_repair_screen.dart';
import 'package:hello_tech_user/screen/book_technician_screen.dart';
import 'package:hello_tech_user/screen/booking_confirmed_screen.dart';
import 'package:hello_tech_user/screen/detailed_receipt_screen.dart';
import 'package:hello_tech_user/screen/details_provided_by_tech_screen.dart';
import 'package:hello_tech_user/screen/my_plans_screen.dart';
import 'package:hello_tech_user/screen/payment_details_screen.dart';
import 'package:hello_tech_user/screen/profile_edit_screen.dart';
import 'package:hello_tech_user/screen/search_screen.dart';
import 'package:hello_tech_user/screen/set_up_password_screen.dart';
import 'package:hello_tech_user/screen/ticket_details_screen.dart';
import 'package:hello_tech_user/screen/upcoming_booking_item_details_screen.dart';
import 'package:hello_tech_user/screen/brand_model_screen.dart';
import 'package:hello_tech_user/screen/diagnosis_test_screen.dart';
import 'package:hello_tech_user/screen/diagnosis_testing_screen.dart';
import 'package:hello_tech_user/screen/earning_screen.dart';
import 'package:hello_tech_user/screen/home_screen.dart';
import 'package:hello_tech_user/screen/information_screen.dart';
import 'package:hello_tech_user/screen/kyc1_screen.dart';
import 'package:hello_tech_user/screen/kyc2_screen.dart';
import 'package:hello_tech_user/screen/login_screen.dart';
import 'package:hello_tech_user/screen/my_booking_screen.dart';
import 'package:hello_tech_user/screen/notification_screen.dart';
import 'package:hello_tech_user/screen/offline_technicians_support_screen.dart';
import 'package:hello_tech_user/screen/profile_screen.dart';
import 'package:hello_tech_user/screen/refer_and_earn_screen.dart';
import 'package:hello_tech_user/screen/refrigerator_repair_screen.dart';
import 'package:hello_tech_user/screen/send_money_screen.dart';
import 'package:hello_tech_user/screen/sign_up_screen.dart';
import 'package:hello_tech_user/screen/splash_screen.dart';
import 'package:hello_tech_user/screen/submit_my_deal_screen.dart';
import 'package:hello_tech_user/screen/vendors_screen.dart';
import 'package:hello_tech_user/screen/verify_personal_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Hello Tech User';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(),
      routes:{
        '/': (BuildContext context) => SplashScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/signup': (BuildContext context) => SignUpScreen(),
        '/home': (BuildContext context) => HomeScreen(),
        '/ots': (BuildContext context) => OfflineTechniciansSupport(),
        '/appliancerepairscreen': (BuildContext context) => ApplianceRepairScreen(),
        '/adblockerscreen': (BuildContext context) => AdBlockerScreen(),
        '/diagnosistestscreen': (BuildContext context) => DiagnosisTestScreen(),
        '/diagnosistestingscreen': (BuildContext context) => DiagnosisTestingScreen(),
        '/refrigeratorrepairscreen': (BuildContext context) => RefrigeratorRepairScreen(),
        '/vendorsscreen': (BuildContext context) => VendorsScreen(),
        '/brandmodelscreen': (BuildContext context) => BrandModelScreen(),
        '/BookTechnicianScreen': (BuildContext context) => BookTechnicianScreen(),
        '/BookingConfirmedScreen': (BuildContext context) => BookingConfirmedScreen(),
        '/SubmitMyDealScreen': (BuildContext context) => SubmitMyDealScreen(),
        '/profile': (BuildContext context) => ProfileScreen(),
        '/notification': (BuildContext context) => NotificationScreen(),
        '/earning': (BuildContext context) => EarningScreen(),
        '/SendMoneyScreen': (BuildContext context) => SendMoneyScreen(),
        '/Kyc1screen': (BuildContext context) => Kyc1Screen(),
        '/Kyc2screen': (BuildContext context) => Kyc2Screen(),
        '/referandearn': (BuildContext context) => ReferAndEarnScreen(),
        '/InformationScreen': (BuildContext context) => InformationScreen(),
        '/MyBookingsScreen': (BuildContext context) => MyBookingsScreen(),
        '/UpcomingBookingItemDetailsScreen': (BuildContext context) => UpcomingBookingItemDetailsScreen(),
        '/BookingDetailsScreen': (BuildContext context) => DetailedReceiptScreen(),
        '/MyPlansScreen': (BuildContext context) => MyPlansScreen(),
        '/EditProfileScreen': (BuildContext context) => ProfileEditScreena(),
        '/TicketDetailsScreen': (BuildContext context) => TicketDetailsScreen(),
        '/SearchScreen': (BuildContext context) => SearchScreen(),
        '/DetailsProvidedTechScreen': (BuildContext context) => DetailsProvidedTechScreen(),
        '/VerifyPersonalDetailsScreen': (BuildContext context) => VerifyPersonalDetailsScreen(),
        '/PaymentDetailsScreen': (BuildContext context) => PaymentDetailsScreen(),
        '/SetUpPasswordScreen': (BuildContext context) => SetUpPasswordScreen(),
      },
      title: _title,
      debugShowCheckedModeBanner: false,
    );
  }
}