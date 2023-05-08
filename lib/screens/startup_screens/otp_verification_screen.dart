import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:yatri/constants/colors.dart';
import 'package:yatri/constants/text_styles.dart';
import 'package:yatri/services/otp_services.dart';

import '../../widgets/company_logo.dart';

class OtpVerificationScreen extends StatefulWidget {
  String phoneNumber;
  OtpVerificationScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {

  String? enteredPin;
  late String expectedPin;

  checkOtp(){
    print('expected pin $expectedPin');
    if(enteredPin!= null && enteredPin == expectedPin){
      if(OtpServices.userExists){
        Get.toNamed('/home_screen');
      }
      else{
        Get.toNamed('/registration_screen');
      }

    }
    else{
      Get.defaultDialog(
          title: 'Invalid OTP',
          middleText: 'OTP does not match.',
          textCancel: 'Try Again!'
      );
    }
  }

  late var response;

  sendOtp() async{
    var otpService = OtpServices();

    response = await otpService.sendOtp(widget.phoneNumber);
    if(response!=null){
      expectedPin = response.otp;
      print(response.otp);
      print(response.toString());
    }
    else{
      print('null');
    }
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    sendOtp();

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
                  Text('Enter the OTP sent to +91${widget.phoneNumber}', style: kSubHeading2TextStyle,),
                  const SizedBox(height: 10,),
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
                  const SizedBox(height: 20,),
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
