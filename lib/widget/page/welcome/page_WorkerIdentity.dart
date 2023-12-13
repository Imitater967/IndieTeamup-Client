import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/Constants.dart';
import 'package:indie_team_up/widget/page/welcome/widget_welcome_resume_head.dart';

class WorkerIdentity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WorkerIdentityState();
  }
}

class _WorkerIdentityState extends State<WorkerIdentity> {
  @override
  Widget build(BuildContext context) {
    var itemUnderlineBorder = const UnderlineInputBorder(
        borderSide:
            BorderSide(color: Colors.grey, width: 2, style: BorderStyle.solid));
    var underline = Container(
      color: Colors.grey,
      height: 2,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
    );
    return SafeArea(
        child: Material(
      child: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: WelcomeResumeHead(
            "创建个人名片",
            "向大家介绍一下自己吧",
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 102,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "头像",
                            style: Constants.resumeItemTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 72,
                              height: 72,
                              child: Placeholder(),
                            ),
                          ),
                        ],
                      ),
                      underline,
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 102,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "姓名",
                            style: Constants.resumeItemTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: itemUnderlineBorder,
                            enabledBorder: itemUnderlineBorder,
                            hintText: "林希"),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 102,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "出生年月",
                            style: Constants.resumeItemTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          //https://pub.dev/packages/flutter_pickers#%E6%97%B6%E9%97%B4%E9%80%89%E6%8B%A9%E5%99%A8
                          Text("1995-08"),
                          Spacer(),
                          Image.asset("assets/art/welcome/GreaterSign.png")
                        ],
                      ),
                      underline,
                    ],
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
