import 'package:flutter/material.dart';
import 'package:hello_tech_user/screen/user_screen/ad_blocker_screen.dart';
import 'package:hello_tech_user/screen/user_screen/add_device.dart';
import 'package:hello_tech_user/screen/user_screen/appliance_repair_screen.dart';
import 'package:hello_tech_user/screen/user_screen/book_tech_screen.dart';
import 'package:hello_tech_user/screen/user_screen/book_technician_screen.dart';
import 'package:hello_tech_user/screen/user_screen/booking_confirmed_screen.dart';
import 'package:hello_tech_user/screen/user_screen/brand_model_screen.dart';
import 'package:hello_tech_user/screen/user_screen/detailed_receipt_screen.dart';
import 'package:hello_tech_user/screen/user_screen/details_provided_by_tech_screen.dart';
import 'package:hello_tech_user/screen/user_screen/diagnosis_test_screen.dart';
import 'package:hello_tech_user/screen/user_screen/diagnosis_testing_screen.dart';
import 'package:hello_tech_user/screen/user_screen/earning_screen.dart';
import 'package:hello_tech_user/screen/user_screen/home_screen.dart';
import 'package:hello_tech_user/screen/user_screen/information_screen.dart';
import 'package:hello_tech_user/screen/user_screen/kyc1_screen.dart';
import 'package:hello_tech_user/screen/user_screen/kyc2_screen.dart';
import 'package:hello_tech_user/screen/user_screen/login_screen.dart';
import 'package:hello_tech_user/screen/user_screen/my_booking_screen.dart';
import 'package:hello_tech_user/screen/user_screen/my_device.dart';
import 'package:hello_tech_user/screen/user_screen/my_plans_screen.dart';
import 'package:hello_tech_user/screen/user_screen/notification_screen.dart';
import 'package:hello_tech_user/screen/user_screen/offline_technicians_support_screen.dart';
import 'package:hello_tech_user/screen/user_screen/payment_details_screen.dart';
import 'package:hello_tech_user/screen/user_screen/profile_edit_screen.dart';
import 'package:hello_tech_user/screen/user_screen/profile_screen.dart';
import 'package:hello_tech_user/screen/user_screen/refer_and_earn_screen.dart';
import 'package:hello_tech_user/screen/user_screen/refrigerator_repair_screen.dart';
import 'package:hello_tech_user/screen/user_screen/search_screen.dart';
import 'package:hello_tech_user/screen/user_screen/send_money_screen.dart';
import 'package:hello_tech_user/screen/user_screen/set_up_password_screen.dart';
import 'package:hello_tech_user/screen/user_screen/sign_up_screen.dart';
import 'package:hello_tech_user/screen/user_screen/slot_booking_confirmed_screen.dart';
import 'package:hello_tech_user/screen/user_screen/splash_screen.dart';
import 'package:hello_tech_user/screen/user_screen/submit_my_deal_screen.dart';
import 'package:hello_tech_user/screen/user_screen/ticket_details_screen.dart';
import 'package:hello_tech_user/screen/user_screen/upcoming_booking_item_details_screen.dart';
import 'package:hello_tech_user/screen/user_screen/vendors_screen.dart';
import 'package:hello_tech_user/screen/user_screen/verify_personal_details_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_add_details_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_add_offers_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_earning_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_home_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_login_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_profile_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_profile_view_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_reviews_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_send_money_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_sign_up_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_splash_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_submit_deal_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_ticket_details_screen.dart';
import 'package:hello_tech_user/screen/vender_screen/v_ticket_screen.dart';
import 'package:hello_tech_user/view/v_closed_tickets_view.dart';
import 'package:hello_tech_user/view/v_live_tickets_view.dart';
import 'package:hello_tech_user/view/v_scheduled_tickets_view.dart';


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
        '/my_device': (BuildContext context) => MyDevice(),
        '/add_device': (BuildContext context) => AddDevice(),
        '/BookTechScreen': (BuildContext context) => BookTechScreen(),
        '/SlotBookingConfirmedScreen': (BuildContext context) => SlotBookingConfirmedScreen(),



        ////vender routes/////

        '/v_splash': (BuildContext context) => VSplashScreen(),
        '/v_home': (BuildContext context) => VHomeScreen(),
        '/v_login': (BuildContext context) => VLoginScreen(),
        '/v_signup': (BuildContext context) => VSignUpScreen(),
        '/v_adddetails': (BuildContext context) => VAddDetailsScreen(),
        '/v_earning': (BuildContext context) => VEarningScreen(),
        '/v_sendMoneyScreen': (BuildContext context) => VSendMoneyScreen(),
        '/v_profile': (BuildContext context) => VProfileScreen(),
        '/v_profileViewScreen': (BuildContext context) => VProfileViewScreen(),
        '/v_addOffersScreen': (BuildContext context) => VAddOffersScreen(),
        '/v_reviewsScreen': (BuildContext context) => VReviewsScreen(),
        '/V_ticketScreen': (BuildContext context) => VTicketScreen(),

        '/v_liveTicketsView': (BuildContext context) => VLiveTicketsView(),
        '/v_scheduledTicketsView': (BuildContext context) => VScheduledTicketsView(),
        '/v_closedTicketsView': (BuildContext context) => VClosedTicketsView(),
        '/v_ticket_details_screen': (BuildContext context) => VTicketDetailsScreen(),
        '/v_submit_deal_screen': (BuildContext context) => VSubmitDealScreen(),


      },
      title: _title,
      debugShowCheckedModeBanner: false,
    );
  }
}