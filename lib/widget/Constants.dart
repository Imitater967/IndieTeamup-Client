import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Constants{
  static Color mainColor = HexColor("#41CED7");
  static var titleTextStyle =  TextStyle(color: Constants.mainColor,fontSize: 24, fontWeight: FontWeight.bold);
  static var greyTextStyle = TextStyle(color: HexColor("#9C9C9C"),fontSize: 20,fontWeight: FontWeight.normal);
  static var mainButtonTextStyleB = const TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold);
  static var mainButtonStyleB = ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(264, 48)),
    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if(states.contains(MaterialState.disabled)){
          return HexColor("#D9D9D9");
        }
        return mainColor; // Use the component's default.
     },
   ),
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

  static var resumeItemTitleTextStyle = TextStyle(color: HexColor("#6C6C6C"),fontSize: 14);
  static var resumeItemTextStyle = TextStyle(color: HexColor("#2C2C2C"),fontSize: 20);
}