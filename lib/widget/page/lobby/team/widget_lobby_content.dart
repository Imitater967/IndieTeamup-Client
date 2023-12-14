import 'package:flutter/cupertino.dart';

import '../../../Constants.dart';

class LobbyContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LobbyContentWidget();
  }

}

class _LobbyContentWidget extends State<LobbyContent>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _LobbyContentItem(),
        _LobbyContentItem(),
      ],
    );
  }

}

class _LobbyContentItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LobbyContentItemState();
  }
}

class _LobbyContentItemState extends State<_LobbyContentItem>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      color: Constants.mainColor,
    );
  }
}

