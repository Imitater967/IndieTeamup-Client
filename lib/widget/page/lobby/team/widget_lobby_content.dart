import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constants.dart';

class LobbyContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyContentWidget();
  }
}

class _LobbyContentWidget extends State<LobbyContent> {
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

class _LobbyContentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyContentItemState();
  }
}

class _LobbyContentItemState extends State<_LobbyContentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      color: Colors.black12,
      child: Column(
        children: [
          Row(
          children: [
            Text("福建XX投资咨询顾问股份..."),
            Spacer(),
            Text("1w-5w"),
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){}, child: Text("收藏"))
          ],
        ),
          Row(
            children: [
              Text("注册资本"),
              SizedBox(width: 10),
              Text("3000万"),
              SizedBox(width: 10),
              Text("成立日期"),
              SizedBox(width: 10),
              Text("2010-07-28"),
            ],
          ),
          Row(
            children: [
              Text("已经认证"),
              Placeholder(),
            ],
          )

        ],
      ),
    );
  }
}
