import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:yatri/screens/home_screen.dart';
import 'package:yatri/screens/home_screens/home_page.dart';
import 'package:yatri/screens/startup_screens/login_screen.dart';
import 'package:yatri/screens/startup_screens/otp_verification_screen.dart';
import 'package:yatri/screens/startup_screens/welcome_screen.dart';

import 'constants/colors.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  await GetStorage.init();
  final box = GetStorage();
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: kPrimaryColor,

        // fontFamily: 'Lora',
      ),

      getPages: [
        GetPage(name: '/login', page: ()=> LoginScreen(),),
        GetPage(name: '/otp_verification_screen', page: () => OtpVerificationScreen(),),
        GetPage(name: '/home_screen', page: () => HomeScreen(),),


      ],
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   '/password_generator': (context) => PasswordGeneratorScreen(),
      // },
      home: (box.read('userId') != '' || box.read('userId') != null)
          ? WelcomeScreen()
          : null,
      //home: GlobalVariables.user == null ? WelcomeScreen() : HomeScreen(),
    ),
  );
}
