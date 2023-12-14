import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_content.dart';

class LobbySubTabBar extends StatefulWidget {

  List<Widget> children = <Widget>[];
  LobbySubTabBar(List<Widget> children){
    this.children=children;
  }

  @override
  State<StatefulWidget> createState() {
    return _LobbySubTabBarState(children);
  }
}

class _LobbySubTabBarState extends State<LobbySubTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _subController;
  List<Widget> children = <Widget>[];
  _LobbySubTabBarState(List<Widget> children){
    this.children=children;
  }
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
        child: Row(
          children: [
            Container(
              height: 30,
              width: 200,
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
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Text("切换\n视图")),
          ],
        ),
      ),
      Expanded(child: TabBarView(controller: _subController,children: children,)),

      ]
    );
  }
}
