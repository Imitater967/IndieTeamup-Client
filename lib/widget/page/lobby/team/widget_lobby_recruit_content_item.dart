
import 'package:flutter/material.dart';

class LobbyRecruitContentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyRecruitContentItemState();
  }
}

class _LobbyRecruitContentItemState extends State<LobbyRecruitContentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.fromLTRB(12, 12, 12, 0),
      color: Colors.black12,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Column(
                  children: [Image.asset("assets/art/avatar/bg_resume_avatar.png"),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    width: 40,
                    decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("7-9k")),
                  )],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
