import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/welcome/widget_resume_item_data_picker.dart';
import 'package:indie_team_up/widget/page/welcome/widget_welcome_resume_head.dart';

import '../../Constants.dart';

class TeamMemberIdentity extends StatelessWidget{
  const TeamMemberIdentity({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
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
                              Constants.underline,
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
                                    focusedBorder: Constants.itemUnderlineBorder,
                                    enabledBorder: Constants.itemUnderlineBorder,
                                    hintText: "林希"),
                              )
                            ],
                          )),
                      ResumeItemDataPicker("我的团队", "IndieTeamUp"),
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
                                    "我的职位",
                                    style: Constants.resumeItemTitleTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: Constants.itemUnderlineBorder,
                                    enabledBorder: Constants.itemUnderlineBorder,
                                    hintText: "产品经理、UI设计师"),
                              )
                            ],
                          )),
                      ResumeItemDataPicker("所在城市", "福建 福州"),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/welcome/teamCompanyIdentity");
                },style: Constants.mainButtonStyleB, child: const Text("下一步"),)
              ],
            ),
          ),
        ));
  }


}