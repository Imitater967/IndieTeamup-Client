import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'Constants.dart';

class WLoginPhoneField extends StatefulWidget{

  final List<Widget> children;

  WLoginPhoneField({ super.key, this.children = const <Widget>[] }) {

  }
  @override
  State<StatefulWidget> createState() {
    return _WLoginPhoneFieldState(children);
  }

}
class _WLoginPhoneFieldState extends State<WLoginPhoneField>{

  final List<Widget> children;
  _WLoginPhoneFieldState(List<Widget> this.children);


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
      margin: const EdgeInsets.fromLTRB(43, 90, 18, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginByCode');
                },
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
            margin: const EdgeInsets.fromLTRB(0, 60, 42, 0),
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