
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
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                      Image.asset("assets/art/avatar/bg_resume_avatar.png"),
                      Align(alignment: Alignment.topRight,child: Container( color: Colors.black54,child: Text("男",style: TextStyle(color: Colors.white),))),
                    ],),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                    width: 40,
                    decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("7-9k")),
                  )],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("杨洋🐏"),
                          Image.asset("assets/art/avatar/icon_resume_identification_lv0.png"),
                          Spacer(),
                          ElevatedButton(onPressed: (){}, child: Text("搜藏")),
                          SizedBox(width: 10,)
                        ],
                      ),
                      Row(
                        children: [
                          Text("23岁"),
                          SizedBox(width: 10,),
                          Text("1年5月"),
                          SizedBox(width: 10,),
                          Text("本科"),
                          SizedBox(width: 10,),
                          Text("离职-随时到港"),
                          SizedBox(width: 10,),
                        ],
                      ),
                      Row(
                        children: [Text("求职期望"),SizedBox(width: 10,),Text("厦门-程序员")],
                      ),
                      Row(
                        children: [Text("曾任职"),SizedBox(width: 10,),Text("腾X科X-程序员")],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
