import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/widget_login_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../Constants.dart';

class LoginByPwd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginByPwdState();
  }
}

class _LoginByPwdState extends State<LoginByPwd> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            WLoginPhoneField(
              title: "密码登录",
              onSubTitleClick: () {
                Navigator.pushNamed(context, "/loginByCode");
              },
              children: const [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "输入密码"),
                        obscureText: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: ElevatedButton(
                    style: Constants.mainButtonStyleB.copyWith(
                        minimumSize:
                            MaterialStateProperty.all(const Size(290, 48))),
                    onPressed: () {},
                    child: Text(
                      "登录",
                      style: Constants.mainButtonTextStyleB,
                    ))),
            Container(
              padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
              child: Text("其他登录方式",
                  style: Constants.greyTextStyle.copyWith(fontSize: 16)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 300,
              height: 100,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 68,
                    icon: Image.asset("assets/art/login/wechat@3x.png")),
                const SizedBox(
                  width: 70,
                ),
                IconButton(
                    onPressed: () {},
                    iconSize: 68,
                    icon: Image.asset("assets/art/login/AliPay@3x.png")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
