import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_content.dart';

class LobbySubTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbySubTabBarState();
  }
}

class _LobbySubTabBarState extends State<LobbySubTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _subController;

  @override
  void initState() {
    super.initState();
    _subController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _subController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TabBar(
        controller: _subController,
        tabs: [
          Tab(
            text: "推荐",
          ),
          Tab(
            text: "附近",
          ),
          Tab(
            text: "最新",
          ),
        ],
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.green),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
      ),
      Expanded(child: TabBarView(controller: _subController,children: [LobbyContent(),LobbyContent(),LobbyContent()],)),

      ]
    );
  }
}
