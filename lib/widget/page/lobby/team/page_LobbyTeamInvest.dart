import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_content.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_invest_content_item.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_sub_tabbar.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_team_bottom_navigation_bar.dart';

class LobbyTeamInvest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyTeamInvestState();
  }
}

class _LobbyTeamInvestState extends State<LobbyTeamInvest>
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
                        text: "风险投资",
                      ),
                      Tab(
                        text: "股权投资",
                      ),
                      Tab(
                        text: "债券投资",
                      )
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("添加")),
                const SizedBox(
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
              //风险投资
              LobbySubTabBar([
                //推荐
                LobbyContent([LobbyInvestContentItem(),LobbyInvestContentItem(),LobbyInvestContentItem()]),
                //附近
                LobbyContent([LobbyInvestContentItem(),LobbyInvestContentItem(),LobbyInvestContentItem()]),
                //最新
                LobbyContent([LobbyInvestContentItem(),LobbyInvestContentItem(),LobbyInvestContentItem()]),

              ]),
              //股权投资
              LobbySubTabBar([
                LobbyContent([LobbyInvestContentItem(),LobbyInvestContentItem(),LobbyInvestContentItem()]),

                LobbyContent([LobbyInvestContentItem(),]),

                LobbyContent([LobbyInvestContentItem()]),

              ]),
              //债券投资
              LobbySubTabBar([
                LobbyContent([]),

                LobbyContent([]),

                LobbyContent([LobbyInvestContentItem()]),

              ]),],
          ))
        ],
      ),
      bottomNavigationBar: TeamBottomNavigationBar(1),
    );
  }
}
