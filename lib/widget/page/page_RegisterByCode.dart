import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/widget_login_phone_field.dart';

import '../Constants.dart';

class RegisterByCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterByCodeState();
  }
}

class _RegisterByCodeState extends State<RegisterByCode> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: Column(
        children: [
          WLoginPhoneField(
            title: "手机号注册",
            subTitle: "登录",
            onSubTitleClick: () {
              Navigator.pushNamed(context, "/loginByCode");
            },
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 160, 0, 0),
            child: ElevatedButton(
              style: Constants.mainButtonStyleB,
              onPressed: (){
                Navigator.pushNamed(context, "/enterCode");
              },
              child: Text(
                "获取验证码",
                style: Constants.mainButtonTextStyleB,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
