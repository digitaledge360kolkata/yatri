import 'package:flutter/material.dart';

import 'colors.dart';


ButtonStyle kContinueButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.all(
    EdgeInsets.all(12),
  ),
  elevation: MaterialStateProperty.all(8.0),
  minimumSize: MaterialStateProperty.all(const Size(200, 40)),
  backgroundColor: MaterialStateProperty.all(kButtonColor),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);


ButtonStyle kLoginButtonStyle = ButtonStyle(
  padding: MaterialStateProperty.all(
    EdgeInsets.all(12),
  ),

  elevation: MaterialStateProperty.all(8.0),
  minimumSize: MaterialStateProperty.all(const Size(200, 40)),
  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);