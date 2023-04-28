import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../constants/button_styles.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/company_logo.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const double imagePadding = 120.0;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initGetBoxStorage() async {
    await GetStorage.init();
  }

  @override
  void initState() {
    // TODO: implement initState
    initGetBoxStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CompanyLogo(),
             Expanded(
              child: Text(
                'Welcome',
                style: kHeadingTextStyle.copyWith(fontSize: 50,),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    rowOnWelcomeScreen(
                        imagePath: 'asset/images/task-complete.png',
                        headlineText: 'Schedule Alert',
                        subText: 'Schedule your alert'),

                    const SizedBox(height: 10,),
                    rowOnWelcomeScreen(
                        imagePath: 'asset/images/reminder.png',
                        headlineText: 'Set Reminder',
                        subText: 'Set your reminder'),

                    const SizedBox(height: 10,),
                    rowOnWelcomeScreen(
                        imagePath: 'asset/images/personalize.png',
                        headlineText: 'Remind unlimited',
                        subText: 'Remind as many times as you want'),

                    const SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/login');
                        //TODO

                      },
                      child: Text('Continue',style: kSubHeading2TextStyle,),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowOnWelcomeScreen({imagePath, headlineText, subText}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(imagePath),
      const SizedBox(
        width: 18,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headlineText,
            style: kSubHeading1TextStyle,
          ),
          Text(
            subText,
            style: kSubHeading3TextStyle,
          ),
        ],
      ),
    ],
  );
}
