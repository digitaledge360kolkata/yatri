import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:yatri/constants/colors.dart';
import 'package:yatri/constants/text_styles.dart';

import '../../widgets/company_logo.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  String? enteredPin;
  String expectedPin = '1234';

  checkOtp(){
    if(enteredPin!= null && enteredPin == expectedPin){
      Get.toNamed('/home_screen');
    }
    else{
      Get.defaultDialog(
          title: 'Invalid OTP',
          middleText: 'OTP does not match.',
          textCancel: 'Try Again!'
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(

        child: Column(
          children: [
            CompanyLogo(),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: OTPTextField(

                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 80,
                      style: kSubHeading1TextStyle,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      otpFieldStyle: OtpFieldStyle(

                        borderColor: kPrimaryColor,
                        enabledBorderColor: kDarkPrimaryColor,

                      ),
                      spaceBetween: 10,
                      keyboardType: TextInputType.number,
                      onCompleted: (pin) {
                        enteredPin = pin;
                        checkOtp();
                        //print("Completed: " + pin);
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {
                      checkOtp();

                    },
                    child: Text('Login',style: kSubHeading2TextStyle,),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
