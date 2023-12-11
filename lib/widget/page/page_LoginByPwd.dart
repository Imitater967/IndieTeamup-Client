import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    PhoneNumber phoneNumber = PhoneNumber(isoCode: "CN");
    SelectorConfig selectorConfig = const SelectorConfig(
      showFlags: false,
      setSelectorButtonAsPrefixIcon: true,
      leadingPadding: 0,
      trailingSpace: false,
    );
    return Material(
      child: Container(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.fromLTRB(43, 90, 18, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "验证码登录",
                      style: Constants.greyTextStyle,
                    ),
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "密码登录",
                  style: Constants.titleTextStyle.copyWith(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 42, 0),
                child: Column(
                  children: [
                    InternationalPhoneNumberInput(
                      onInputChanged: (number) {},
                      initialValue: phoneNumber,
                      spaceBetweenSelectorAndTextField: 1,
                      selectorConfig: selectorConfig,
                      hintText: "请输入手机号码",
                    ),
                    const Row(
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
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: ElevatedButton(
                      style: Constants.mainButtonStyleB,
                      onPressed: () {},
                      child: Text(
                        "登录",
                        style: Constants.mainButtonTextStyleB,
                      ))),
              Container(
                padding: EdgeInsets.fromLTRB(0, 190, 0, 0),
                child: Text("其他登录方式",
                    style: Constants.greyTextStyle.copyWith(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 300,
                height: 200,
                child: Row(children: [
                  IconButton(
                      onPressed: () {},
                      iconSize: 68,
                      icon: Image.asset("assets/art/login/wechat@3x.png")),
                  SizedBox(
                    width: 100,
                  ),
                  IconButton(
                      onPressed: () {},
                      iconSize: 68,
                      icon: Image.asset("assets/art/login/alipay@3x.png")),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
