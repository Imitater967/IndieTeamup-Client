import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../Constants.dart';

class WLoginPhoneField extends StatefulWidget {
  final List<Widget> children;
  String title;
  String subTitle;
  VoidCallback onSubTitleClick;

  WLoginPhoneField(
      {super.key,
      this.title = "密码登录",
      this.subTitle = "验证码登录",
      required this.onSubTitleClick,
      this.children = const <Widget>[]}) {}

  @override
  State<StatefulWidget> createState() {
    return _WLoginPhoneFieldState(
        title: title,
        children: children,
        onSubTitleClick: this.onSubTitleClick,
        subTitle: this.subTitle);
  }
}

class _WLoginPhoneFieldState extends State<WLoginPhoneField> {
  final String title;
  final List<Widget> children;
  final String subTitle;
  VoidCallback onSubTitleClick;

  _WLoginPhoneFieldState(
      {this.title = "密码登录",
      this.subTitle = "验证码登录",
      required this.onSubTitleClick,
      this.children = const <Widget>[]}) {}

  @override
  Widget build(BuildContext context) {
    PhoneNumber phoneNumber = PhoneNumber(isoCode: "CN");
    SelectorConfig selectorConfig = const SelectorConfig(
      showFlags: false,
      setSelectorButtonAsPrefixIcon: true,
      leadingPadding: 0,
      trailingSpace: false,
    );

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Image.asset("assets/art/login/return@3x.png"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: onSubTitleClick,
                child: Text(
                  subTitle,
                  style: Constants.greyTextStyle,
                ),
              )),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: Constants.titleTextStyle.copyWith(fontSize: 30),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: [
                InternationalPhoneNumberInput(
                  onInputChanged: (number) {},
                  initialValue: phoneNumber,
                  spaceBetweenSelectorAndTextField: 1,
                  selectorConfig: selectorConfig,
                  hintText: "请输入手机号码",
                ),
                ...children,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
