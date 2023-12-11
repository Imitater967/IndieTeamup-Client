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
    SelectorConfig selectorConfig = SelectorConfig(
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
                      child: Text("登录",style: Constants.mainButtonTextStyleB,)))
            ],
          ),
        ),
      ),
    );
  }
}
