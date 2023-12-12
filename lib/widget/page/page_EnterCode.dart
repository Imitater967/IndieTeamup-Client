import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/Constants.dart';

class EnterCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EnterCodeState(1233113);
  }
}

class _EnterCodeState extends State<EnterCode> {
  int phoneNumber;

  _EnterCodeState(this.phoneNumber) {}

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Image.asset("assets/art/login/return@3x.png"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(42, 44, 43, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "请输入验证码",
                        style: Constants.titleTextStyle,
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "已发送验证码至" + phoneNumber.toString(),
                      style: Constants.greyTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(),
                    style: TextStyle(fontSize: 24),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text("继续"),
                          style: Constants.mainButtonStyleB,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
