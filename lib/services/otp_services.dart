import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:yatri/models/login_user_details.dart';

import '../global/global_variables.dart';

class OtpServices{


  late Map mappedResponse;
  late String otp;
  late bool userExists;
  Future sendOtp(String phoneNumber) async {


    late http.Response response;
    try{
      response = await http.post(
        Uri.parse(GlobalVariables.baseUrl + "/api/user/otp"),
        body: {
          'phone': phoneNumber,
        },
      );
    }
    catch(error){
      Get.snackbar('Error',error.toString());
    }

    mappedResponse = json.decode(response.body);
    if (response.statusCode == 200) {
      print(response.body.toString());

      //print(mappedResponse['otp']);
      otp = mappedResponse['otp'].toString();
      //Toast.show('OTP is : $otp',duration:  6,);


      if(mappedResponse['message'].toString() == 'user not exist'){
        userExists = false;
      }
      else{

        userExists = true;

      }


      return LoginUserDetails(phoneNumber: phoneNumber, otp: otp, userExists: userExists);

    }
    else {
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }
}