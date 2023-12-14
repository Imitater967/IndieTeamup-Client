import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/welcome/widget_resume_item_data_picker.dart';
import 'package:indie_team_up/widget/page/welcome/widget_welcome_resume_head.dart';

import '../../Constants.dart';

class TeamCompanyIdentity extends StatelessWidget{

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
                    "创建团队名片",
                    "向大家介绍一下团队吧",
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
                      ResumeItemDataPicker("团队名称", "IndieTeamUp"),
                      ResumeItemDataPicker("所在城市", "福建 厦门"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "团队项目",
                            style: Constants.resumeItemTitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Image.asset("assets/art/welcome/PlusSign.png")),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: Constants.itemUnderlineBorder,
                            enabledBorder: Constants.itemUnderlineBorder,
                            hintText: "梦幻西游"),
                      ),
                      ResumeItemDataPicker("在招职位", "无"),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, "/lobby/lobbyTeamOverview");
                },style: Constants.mainButtonStyleB, child: const Text("下一步"),)
              ],
            ),
          ),
        ));
  }


}