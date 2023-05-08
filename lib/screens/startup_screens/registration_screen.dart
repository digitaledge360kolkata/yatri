import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController txtNameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screenWidth =  MediaQuery.of(context).size.width ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your details:'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius:screenWidth* 0.2,
              backgroundColor: kBackgroundColor,
              child: Image.asset('asset/images/logo.png'),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: TextField(
                controller: txtNameTextEditingController,
                maxLength: 20,
                maxLines: 1,
                keyboardType: TextInputType.number,

                style: kSubHeading1TextStyle,

                decoration: InputDecoration(
                  hintText: 'What should we call you?',
                  suffixIconColor: kPrimaryColor,
                  labelText: 'Name',
                  labelStyle: kSubHeading2TextStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),

                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {


              },
              child: Text('Okay',style: kSubHeading2TextStyle,),
            ),

          ],
        ),
      ),
    );
  }
}
