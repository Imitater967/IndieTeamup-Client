import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_content.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_invest_content_item.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_recruit_content_item.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_sub_tabbar.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_team_bottom_navigation_bar.dart';

class LobbyTeamRecruit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyTeamRecruitState();
  }
}

class _LobbyTeamRecruitState extends State<LobbyTeamRecruit>
    with SingleTickerProviderStateMixin {
  late TabController _parentController;

  @override
  void initState() {
    super.initState();
    _parentController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _parentController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 45,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 280,
                  child: TabBar(
                    controller: _parentController,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black45,
                    labelPadding: EdgeInsets.symmetric(horizontal: 1),
                    tabs: const [
                      Tab(
                        text: "策划",
                      ),
                      Tab(
                        text: "项目管理",
                      ),
                      Tab(
                        text: "程序员",
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("添加")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(onPressed: () {}, child: Text("搜索"))
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _parentController,
            children: [
              LobbySubTabBar([
                LobbyContent([LobbyRecruitContentItem()]),

                LobbyContent([]),

                LobbyContent([]),

              ]),
              LobbySubTabBar([
                LobbyContent([]),

                LobbyContent([]),

                LobbyContent([]),

              ]),
              LobbySubTabBar([
                LobbyContent([]),

                LobbyContent([]),

                LobbyContent([]),

              ]),],
          ))
        ],
      ),
      bottomNavigationBar: TeamBottomNavigationBar(0),
    );
  }
}
