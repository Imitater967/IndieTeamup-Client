import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/welcome/widget_welcome_resume_head.dart';

import '../../Constants.dart';

//这个很明显是statefulwidget, 比如 死亡细胞和梦幻西游
class InvestorCompanyIdentity extends StatelessWidget{
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
                    "资方简介",
                    "向团队介绍一下自己吧",
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                                    "公司名称",
                                    style: Constants.resumeItemTitleTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: Constants.itemUnderlineBorder,
                                    enabledBorder: Constants.itemUnderlineBorder,
                                    hintText: "IndieTeamUp"),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: 200,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "已投项目",
                                    style: Constants.resumeItemTitleTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  Spacer(),
                                  IconButton(onPressed: (){}, icon: Image.asset("assets/art/welcome/PlusSign.png")),
                                ],
                              ),
                              //这里是一个List
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: Constants.itemUnderlineBorder,
                                    enabledBorder: Constants.itemUnderlineBorder,
                                    hintText: "死X细X"),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    focusedBorder: Constants.itemUnderlineBorder,
                                    enabledBorder: Constants.itemUnderlineBorder,
                                    hintText: "梦X西X"),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: (){},style: Constants.mainButtonStyleB, child: const Text("下一步"),)
              ],
            ),
          ),
        ));
  }


}