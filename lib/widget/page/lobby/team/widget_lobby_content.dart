import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indie_team_up/widget/page/lobby/team/widget_lobby_invest_content_item.dart';

import '../../../Constants.dart';

class LobbyContent extends StatefulWidget {
  List<Widget> children = <Widget>[];
  LobbyContent(List<Widget> children){
    this.children=children;
  }

  @override
  State<StatefulWidget> createState() {
    return _LobbyContentWidget(children);
  }
}

class _LobbyContentWidget extends State<LobbyContent> {

  List<Widget> children = <Widget>[];
  _LobbyContentWidget(List<Widget> children){
    this.children=children;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}
