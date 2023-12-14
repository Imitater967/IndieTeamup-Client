
import 'package:flutter/material.dart';

class LobbyInvestContentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LobbyInvestContentItemState();
  }
}

class _LobbyInvestContentItemState extends State<LobbyInvestContentItem> {
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
              SizedBox(width: 10,),
              Image.asset("assets/art/avatar/icon_resume_identification_lv0.png",width: 14,height: 14,),
              Container(margin: EdgeInsets.symmetric(horizontal: 10),color: Colors.black26,child: Text("小微企业"),),
              Container(color: Colors.black26,child: Text("中国香港"),),
            ],
          ),
          Row(
            children: [
              Image.asset("assets/art/avatar/bg_resume_avatar.png",height: 50,width: 50,),
              Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("林希",textAlign: TextAlign.left,),
                    ],
                  ),
                  Row(
                    children: [
                      Text("已投项目"),
                      SizedBox(width: 10,),
                      Text("保X萝X"),
                      SizedBox(width: 10,),
                      Text("王X荣X"),
                    ],
                  )
                ],),
              )
            ],
          )
        ],
      ),
    );
  }
}
