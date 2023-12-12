import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget_login_phone_field.dart';

class LoginByCode extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  int number = 13110403087;

  return _LoginByCodeState();
  }

}

class _LoginByCodeState extends State<LoginByCode>{

  int number=00100100;

  void setNumber(int number){
    setState(() {
      this.number = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            WLoginPhoneField(
              title: "手机号登录",subTitle: "密码登录", onSubTitleClick: (){Navigator.pop(context);},
            )
          ],
        ),
      ),
    );
  }

}