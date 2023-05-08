import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yatri/constants/text_styles.dart';
import 'package:yatri/screens/startup_screens/otp_verification_screen.dart';

import '../../constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtPhoneNumberTextEditingController = TextEditingController();

  checkNumber(){

    if(txtPhoneNumberTextEditingController.text.isEmpty){
      Get.defaultDialog(
        title: 'Invalid',
        middleText: 'Phone number can\'t be empty',
        textCancel: 'Okay'
      );
    }
    else if(txtPhoneNumberTextEditingController.text.length < 10){
      Get.defaultDialog(
          title: 'Invalid',
          middleText: 'Phone number can\'t be less than 10',
          textCancel: 'Okay'
      );
    }
    else if(txtPhoneNumberTextEditingController.text.startsWith('0')){
      Get.defaultDialog(
          title: 'Invalid',
          middleText: 'Please give a valid phone number',
          textCancel: 'Okay'
      );
    }
    else if(txtPhoneNumberTextEditingController.text.isPhoneNumber){
      Get.to(OtpVerificationScreen(phoneNumber: txtPhoneNumberTextEditingController.text),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('asset/images/logo.png'),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      controller: txtPhoneNumberTextEditingController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      style: kSubHeading1TextStyle,
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: 'Phone number',
                        suffixIconColor: kPrimaryColor,
                        labelText: 'Phone',
                        labelStyle: kSubHeading2TextStyle,

                        prefix: Text('+91 ', style: kSubHeading1TextStyle.copyWith(),),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),

                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        checkNumber();

                      },
                      child: Text('Login',style: kSubHeading2TextStyle,),
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
