import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Constants{
  static Color mainColor = HexColor("#41CED7");
  static var titleTextStyle =  TextStyle(color: Constants.mainColor,fontSize: 24, fontWeight: FontWeight.bold);

  static var mainButtonTextStyleB = const TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold);
  static var mainButtonStyleB = ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(264, 48)),
    backgroundColor: MaterialStateProperty.all(Constants.mainColor),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
  );
  static var mainButtonTextStyleA = TextStyle(color: Constants.mainColor,fontSize: 24, fontWeight: FontWeight.bold);
  static var mainButtonStyleA = ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(264, 48)),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
  );
}