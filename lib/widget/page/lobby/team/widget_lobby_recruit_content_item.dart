import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_skill.dart';

class LobbyRecruitContentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyRecruitContentItemStateV2();
  }
}

class _LobbyRecruitContentItemStateV2 extends State<LobbyRecruitContentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      color: Colors.black12,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset("assets/art/avatar/bg_resume_avatar.png"),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                color: Colors.black54,
                                child: Image.asset(
                                    "assets/art/avatar/icon_resume_identification_lv0.png"))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("杨洋🐏"),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text("男")),
                        ),
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("最低薪资 无分成6k | 加分成 2k"),
                          Spacer(),
                          ElevatedButton(onPressed: () {}, child: Text("收藏")),
                          SizedBox(
                            width: 10,
                          ),
                          SpeedDial(
                            backgroundColor: Colors.grey,
                            icon: Icons.menu,
                            shape: Border(),
                            spaceBetweenChildren: 0,
                            renderOverlay: false,
                            childrenButtonSize: Size(50, 20),
                            overlayOpacity: 0,
                            childMargin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            childPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            spacing: 0,
                            activeIcon: Icons.menu_open,
                            buttonSize: const Size(80, 60),
                            overlayColor: Colors.white10,
                            direction: SpeedDialDirection.down,
                            children: [
                              SpeedDialChild(
                                  child: Text("加关注"), shape: const Border()),
                              SpeedDialChild(
                                  child: Text("举报"), shape: const Border()),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("支付方式 按量支付"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text("期望区域 福州"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("要求最低资质 个体户")
                        ],
                      ),
                      const Row(
                        children: [
                          Text("辅应聘职位 3d美术 策划"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black,
                        width: double.maxFinite,
                        height: 2,
                      ),
                       Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("技能"),
                                ],
                              ),
                              SkillArraySimple(),
                            ],
                          ),
                          Row(
                            children: [Text("职能")],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LobbyRecruitContentItemStateV1 extends State<LobbyRecruitContentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      color: Colors.black12,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.asset("assets/art/avatar/bg_resume_avatar.png"),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                color: Colors.black54,
                                child: Text(
                                  "男",
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text("7-9k")),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("杨洋🐏"),
                          Image.asset(
                              "assets/art/avatar/icon_resume_identification_lv0.png"),
                          Spacer(),
                          ElevatedButton(onPressed: () {}, child: Text("搜藏")),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text("23岁"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("1年5月"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("本科"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("离职-随时到港"),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("求职期望"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("厦门-程序员")
                        ],
                      ),
                      Row(
                        children: [
                          Text("曾任职"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("腾X科X-程序员")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
