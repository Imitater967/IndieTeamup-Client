import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_sub_tabbar.dart';

class LobbyTeamOverview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyTeamOverviewState();
  }
}

class _LobbyTeamOverviewState extends State<LobbyTeamOverview>
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
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(25),
            ),
            child: TabBar(
              controller: _parentController,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.green),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
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
          Expanded(
              child: TabBarView(
            controller: _parentController,
            children: [
              LobbySubTabBar(),
              LobbySubTabBar(),
              LobbySubTabBar(),
            ],
          ))
        ],
      ),
    );
  }
}
