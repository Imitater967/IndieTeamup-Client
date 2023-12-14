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
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: TabBar(
              controller: _parentController,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black45,
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
