//我很确定这里的都是Stateleess

import 'package:flutter/cupertino.dart';

class _SkillItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("技能名字"),
      SizedBox(width: 10,),
      Text("Lv2")
    ],);
  }


}