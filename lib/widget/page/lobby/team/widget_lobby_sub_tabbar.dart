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
      children: [Container(
        color: Colors.grey,
        child: TabBar(
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
          labelColor: Colors.black,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.black45,
        ),
      ),
      Expanded(child: TabBarView(controller: _subController,children: [LobbyContent(),LobbyContent(),LobbyContent()],)),

      ]
    );
  }
}
